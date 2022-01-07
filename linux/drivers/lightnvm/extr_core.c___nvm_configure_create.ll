; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_configure_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_configure_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_ioctl_create = type { i32 }
%struct.nvm_dev = type { i32 }

@nvm_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"device not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@nvm_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_ioctl_create*)* @__nvm_configure_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvm_configure_create(%struct.nvm_ioctl_create* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvm_ioctl_create*, align 8
  %4 = alloca %struct.nvm_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.nvm_ioctl_create* %0, %struct.nvm_ioctl_create** %3, align 8
  %6 = call i32 @down_write(i32* @nvm_lock)
  %7 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %3, align 8
  %8 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nvm_dev* @nvm_find_nvm_dev(i32 %9)
  store %struct.nvm_dev* %10, %struct.nvm_dev** %4, align 8
  %11 = call i32 @up_write(i32* @nvm_lock)
  %12 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %13 = icmp ne %struct.nvm_dev* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %20 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %19, i32 0, i32 0
  %21 = call i32 @kref_get(i32* %20)
  %22 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %23 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %3, align 8
  %24 = call i32 @nvm_create_tgt(%struct.nvm_dev* %22, %struct.nvm_ioctl_create* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %29 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %28, i32 0, i32 0
  %30 = load i32, i32* @nvm_free, align 4
  %31 = call i32 @kref_put(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %18
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.nvm_dev* @nvm_find_nvm_dev(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @nvm_create_tgt(%struct.nvm_dev*, %struct.nvm_ioctl_create*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
