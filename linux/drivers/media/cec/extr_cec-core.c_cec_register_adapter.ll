; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_register_adapter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-core.c_cec_register_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32, i32, %struct.cec_adapter*, %struct.cec_adapter*, %struct.TYPE_14__*, %struct.cec_adapter*, %struct.TYPE_11__, %struct.TYPE_15__*, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.device* }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.device* }
%struct.device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CEC_CAP_RC = common dso_local global i32 0, align 4
@cec_adap_status = common dso_local global i32 0, align 4
@cec_error_inj_fops = common dso_local global i32 0, align 4
@top_cec_dir = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cec_register_adapter(%struct.cec_adapter* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cec_adapter*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %8 = call i64 @IS_ERR_OR_NULL(%struct.cec_adapter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = icmp ne %struct.device* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %50

21:                                               ; preds = %11
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %31 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  store %struct.device* %29, %struct.device** %33, align 8
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %34, i32 0, i32 6
  %36 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cec_devnode_register(%struct.TYPE_11__* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %21
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %21
  %45 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.cec_adapter*, %struct.cec_adapter** %4, align 8
  %49 = call i32 @dev_set_drvdata(%struct.TYPE_16__* %47, %struct.cec_adapter* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %42, %18, %10
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.cec_adapter*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @cec_devnode_register(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_16__*, %struct.cec_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
