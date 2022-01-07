; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { i32, i32, i32, i32, i32, %struct.nvm_geo }
%struct.nvm_geo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*)* @nvm_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_core_init(%struct.nvm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvm_dev*, align 8
  %4 = alloca %struct.nvm_geo*, align 8
  %5 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %3, align 8
  %6 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %7 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %6, i32 0, i32 5
  store %struct.nvm_geo* %7, %struct.nvm_geo** %4, align 8
  %8 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %9 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @BITS_TO_LONGS(i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @kcalloc(i32 %11, i32 8, i32 %12)
  %14 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %1
  %24 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %25 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %28 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %27, i32 0, i32 3
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %31 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %30, i32 0, i32 2
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %33, i32 0, i32 1
  %35 = call i32 @spin_lock_init(i32* %34)
  %36 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %37 = call i32 @nvm_register_map(%struct.nvm_dev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %23
  br label %42

41:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %48

42:                                               ; preds = %40
  %43 = load %struct.nvm_dev*, %struct.nvm_dev** %3, align 8
  %44 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @kfree(i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %42, %41, %20
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nvm_register_map(%struct.nvm_dev*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
