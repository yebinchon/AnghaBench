; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_config_extended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c___nvm_config_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_ioctl_create_extended = type { i32, i32, i32 }

@NVM_TARGET_DEFAULT_OP = common dso_local global i32 0, align 4
@NVM_TARGET_MIN_OP = common dso_local global i32 0, align 4
@NVM_TARGET_MAX_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid over provisioning value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.nvm_ioctl_create_extended*)* @__nvm_config_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nvm_config_extended(%struct.nvm_dev* %0, %struct.nvm_ioctl_create_extended* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvm_dev*, align 8
  %5 = alloca %struct.nvm_ioctl_create_extended*, align 8
  store %struct.nvm_dev* %0, %struct.nvm_dev** %4, align 8
  store %struct.nvm_ioctl_create_extended* %1, %struct.nvm_ioctl_create_extended** %5, align 8
  %6 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %7 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 65535
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %12 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 65535
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %17 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %19 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %24 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %15, %10, %2
  %26 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %27 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 65535
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @NVM_TARGET_DEFAULT_OP, align 4
  %32 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %33 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %51

34:                                               ; preds = %25
  %35 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %36 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NVM_TARGET_MIN_OP, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %42 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NVM_TARGET_MAX_OP, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %34
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %30
  %52 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %53 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %52, i32 0, i32 0
  %54 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %55 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nvm_ioctl_create_extended*, %struct.nvm_ioctl_create_extended** %5, align 8
  %58 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @nvm_config_check_luns(%struct.TYPE_2__* %53, i32 %56, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %51, %46
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nvm_config_check_luns(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
