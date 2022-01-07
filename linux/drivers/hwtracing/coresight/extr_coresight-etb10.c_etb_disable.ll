; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight-etb10.c_etb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.etb_drvdata = type { i64, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@CS_MODE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"ETB disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coresight_device*)* @etb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @etb_disable(%struct.coresight_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coresight_device*, align 8
  %4 = alloca %struct.etb_drvdata*, align 8
  %5 = alloca i64, align 8
  store %struct.coresight_device* %0, %struct.coresight_device** %3, align 8
  %6 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %7 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.etb_drvdata* @dev_get_drvdata(i32 %9)
  store %struct.etb_drvdata* %10, %struct.etb_drvdata** %4, align 8
  %11 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %12 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %11, i32 0, i32 2
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %16 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @atomic_dec_return(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %22 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %21, i32 0, i32 2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %29 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CS_MODE_DISABLED, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON_ONCE(i32 %33)
  %35 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %36 = call i32 @etb_disable_hw(%struct.etb_drvdata* %35)
  %37 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %38 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 8
  %39 = load i64, i64* @CS_MODE_DISABLED, align 8
  %40 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %41 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.etb_drvdata*, %struct.etb_drvdata** %4, align 8
  %43 = getelementptr inbounds %struct.etb_drvdata, %struct.etb_drvdata* %42, i32 0, i32 2
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load %struct.coresight_device*, %struct.coresight_device** %3, align 8
  %47 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(%struct.TYPE_2__* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %27, %20
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.etb_drvdata* @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_dec_return(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @etb_disable_hw(%struct.etb_drvdata*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
