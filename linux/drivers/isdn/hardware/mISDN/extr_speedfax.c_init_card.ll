; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_init_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_speedfax.c_init_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfax_hw = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@speedfax_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: couldn't get interrupt %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: ISAC init failed with %d\0A\00", align 1
@ISAC_CMDR = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEBUG_HW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s: IRQ %d count %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: IRQ(%d) got no requests during init %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfax_hw*)* @init_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_card(%struct.sfax_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfax_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sfax_hw* %0, %struct.sfax_hw** %3, align 8
  store i32 3, i32* %5, align 4
  %7 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %8 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @speedfax_irq, align 4
  %11 = load i32, i32* @IRQF_SHARED, align 4
  %12 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %13 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %16 = call i32 @request_irq(i32 %9, i32 %10, i32 %11, i32 %14, %struct.sfax_hw* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %21 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %24 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %108

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %99, %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = icmp ne i32 %30, 0
  br i1 %32, label %33, label %100

33:                                               ; preds = %29
  %34 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %35 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %34, i32 0, i32 3
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @spin_lock_irqsave(i32* %35, i32 %36)
  %38 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %39 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %40, align 8
  %42 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %43 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %42, i32 0, i32 4
  %44 = call i32 %41(%struct.TYPE_2__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %49 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %48, i32 0, i32 3
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i32 %50)
  %52 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %53 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  br label %100

57:                                               ; preds = %33
  %58 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %59 = call i32 @enable_hwirq(%struct.sfax_hw* %58)
  %60 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %61 = load i32, i32* @ISAC_CMDR, align 4
  %62 = call i32 @WriteISAC_IND(%struct.sfax_hw* %60, i32 %61, i32 65)
  %63 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %64 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %63, i32 0, i32 3
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i32 %65)
  %67 = call i32 @msleep_interruptible(i32 10)
  %68 = load i32, i32* @debug, align 4
  %69 = load i32, i32* @DEBUG_HW, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %57
  %73 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %74 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %77 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %80 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @pr_notice(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %72, %57
  %84 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %85 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %90 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %93 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 3, %95
  %97 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %94, i32 %96)
  br label %99

98:                                               ; preds = %83
  store i32 0, i32* %2, align 4
  br label %108

99:                                               ; preds = %88
  br label %29

100:                                              ; preds = %47, %29
  %101 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %102 = getelementptr inbounds %struct.sfax_hw, %struct.sfax_hw* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.sfax_hw*, %struct.sfax_hw** %3, align 8
  %105 = call i32 @free_irq(i32 %103, %struct.sfax_hw* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %100, %98, %19
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.sfax_hw*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @enable_hwirq(%struct.sfax_hw*) #1

declare dso_local i32 @WriteISAC_IND(%struct.sfax_hw*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.sfax_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
