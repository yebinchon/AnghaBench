; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_dmdata_set_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_dmdata_set_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.dc_dmdata_attributes = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dcn20_hubp = type { i32 }

@DMDATA_HW_MODE = common dso_local global i64 0, align 8
@DMDATA_CNTL = common dso_local global i32 0, align 4
@DMDATA_MODE = common dso_local global i32 0, align 4
@DCSURF_FLIP_CONTROL = common dso_local global i32 0, align 4
@SURFACE_UPDATE_LOCK = common dso_local global i32 0, align 4
@DMDATA_UPDATED = common dso_local global i32 0, align 4
@DMDATA_REPEAT = common dso_local global i32 0, align 4
@DMDATA_SIZE = common dso_local global i32 0, align 4
@DMDATA_ADDRESS_LOW = common dso_local global i32 0, align 4
@DMDATA_ADDRESS_HIGH = common dso_local global i32 0, align 4
@DMDATA_SW_CNTL = common dso_local global i32 0, align 4
@DMDATA_SW_UPDATED = common dso_local global i32 0, align 4
@DMDATA_SW_REPEAT = common dso_local global i32 0, align 4
@DMDATA_SW_SIZE = common dso_local global i32 0, align 4
@DMDATA_QOS_CNTL = common dso_local global i32 0, align 4
@DMDATA_QOS_MODE = common dso_local global i32 0, align 4
@DMDATA_QOS_LEVEL = common dso_local global i32 0, align 4
@DMDATA_DL_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubp2_dmdata_set_attributes(%struct.hubp* %0, %struct.dc_dmdata_attributes* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.dc_dmdata_attributes*, align 8
  %5 = alloca %struct.dcn20_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct.dc_dmdata_attributes* %1, %struct.dc_dmdata_attributes** %4, align 8
  %6 = load %struct.hubp*, %struct.hubp** %3, align 8
  %7 = call %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp* %6)
  store %struct.dcn20_hubp* %7, %struct.dcn20_hubp** %5, align 8
  %8 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %9 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DMDATA_HW_MODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %2
  %14 = load i32, i32* @DMDATA_CNTL, align 4
  %15 = load i32, i32* @DMDATA_MODE, align 4
  %16 = call i32 @REG_UPDATE(i32 %14, i32 %15, i32 1)
  %17 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %18 = load i32, i32* @SURFACE_UPDATE_LOCK, align 4
  %19 = call i32 @REG_UPDATE(i32 %17, i32 %18, i32 1)
  %20 = load i32, i32* @DMDATA_CNTL, align 4
  %21 = load i32, i32* @DMDATA_UPDATED, align 4
  %22 = call i32 @REG_UPDATE(i32 %20, i32 %21, i32 0)
  %23 = load i32, i32* @DMDATA_CNTL, align 4
  %24 = load i32, i32* @DMDATA_UPDATED, align 4
  %25 = load i32, i32* @DMDATA_REPEAT, align 4
  %26 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %27 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMDATA_SIZE, align 4
  %30 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %31 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @REG_UPDATE_3(i32 %23, i32 %24, i32 1, i32 %25, i32 %28, i32 %29, i32 %32)
  %34 = load i32, i32* @DMDATA_ADDRESS_LOW, align 4
  %35 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %36 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @REG_WRITE(i32 %34, i32 %38)
  %40 = load i32, i32* @DMDATA_ADDRESS_HIGH, align 4
  %41 = load i32, i32* @DMDATA_ADDRESS_HIGH, align 4
  %42 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %43 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %42, i32 0, i32 7
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @REG_UPDATE(i32 %40, i32 %41, i32 %45)
  %47 = load i32, i32* @DCSURF_FLIP_CONTROL, align 4
  %48 = load i32, i32* @SURFACE_UPDATE_LOCK, align 4
  %49 = call i32 @REG_UPDATE(i32 %47, i32 %48, i32 0)
  br label %76

50:                                               ; preds = %2
  %51 = load i32, i32* @DMDATA_CNTL, align 4
  %52 = load i32, i32* @DMDATA_MODE, align 4
  %53 = call i32 @REG_SET(i32 %51, i32 0, i32 %52, i32 0)
  %54 = load i32, i32* @DMDATA_SW_CNTL, align 4
  %55 = load i32, i32* @DMDATA_SW_UPDATED, align 4
  %56 = call i32 @REG_UPDATE(i32 %54, i32 %55, i32 0)
  %57 = load i32, i32* @DMDATA_SW_CNTL, align 4
  %58 = load i32, i32* @DMDATA_SW_UPDATED, align 4
  %59 = load i32, i32* @DMDATA_SW_REPEAT, align 4
  %60 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %61 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DMDATA_SW_SIZE, align 4
  %64 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %65 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @REG_UPDATE_3(i32 %57, i32 %58, i32 1, i32 %59, i32 %62, i32 %63, i32 %66)
  %68 = load %struct.hubp*, %struct.hubp** %3, align 8
  %69 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %70 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %73 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hubp2_dmdata_load(%struct.hubp* %68, i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %50, %13
  %77 = load i32, i32* @DMDATA_QOS_CNTL, align 4
  %78 = load i32, i32* @DMDATA_QOS_MODE, align 4
  %79 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %80 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @DMDATA_QOS_LEVEL, align 4
  %83 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %84 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @DMDATA_DL_DELTA, align 4
  %87 = load %struct.dc_dmdata_attributes*, %struct.dc_dmdata_attributes** %4, align 8
  %88 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @REG_SET_3(i32 %77, i32 0, i32 %78, i32 %81, i32 %82, i32 %85, i32 %86, i32 %89)
  ret void
}

declare dso_local %struct.dcn20_hubp* @TO_DCN20_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @hubp2_dmdata_load(%struct.hubp*, i32, i32) #1

declare dso_local i32 @REG_SET_3(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
