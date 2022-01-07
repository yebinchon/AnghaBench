; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_update_dchub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_update_dchub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dchub_init_data = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn10_hubbub = type { i32 }

@DCHUBBUB_SDPIF_FB_TOP = common dso_local global i32 0, align 4
@SDPIF_FB_TOP = common dso_local global i32 0, align 4
@DCHUBBUB_SDPIF_FB_BASE = common dso_local global i32 0, align 4
@SDPIF_FB_BASE = common dso_local global i32 0, align 4
@DCHUBBUB_SDPIF_AGP_BASE = common dso_local global i32 0, align 4
@SDPIF_AGP_BASE = common dso_local global i32 0, align 4
@DCHUBBUB_SDPIF_AGP_BOT = common dso_local global i32 0, align 4
@SDPIF_AGP_BOT = common dso_local global i32 0, align 4
@DCHUBBUB_SDPIF_AGP_TOP = common dso_local global i32 0, align 4
@SDPIF_AGP_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hubbub1_update_dchub(%struct.hubbub* %0, %struct.dchub_init_data* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dchub_init_data*, align 8
  %5 = alloca %struct.dcn10_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dchub_init_data* %1, %struct.dchub_init_data** %4, align 8
  %6 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %7 = call %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub* %6)
  store %struct.dcn10_hubbub* %7, %struct.dcn10_hubbub** %5, align 8
  %8 = load i32, i32* @DCHUBBUB_SDPIF_FB_TOP, align 4
  %9 = call i64 @REG(i32 %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @ASSERT(i32 0)
  br label %93

13:                                               ; preds = %2
  %14 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %15 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %87 [
    i32 128, label %17
    i32 129, label %50
    i32 130, label %77
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @DCHUBBUB_SDPIF_FB_TOP, align 4
  %19 = load i32, i32* @SDPIF_FB_TOP, align 4
  %20 = call i32 @REG_UPDATE(i32 %18, i32 %19, i32 0)
  %21 = load i32, i32* @DCHUBBUB_SDPIF_FB_BASE, align 4
  %22 = load i32, i32* @SDPIF_FB_BASE, align 4
  %23 = call i32 @REG_UPDATE(i32 %21, i32 %22, i32 65535)
  %24 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BASE, align 4
  %25 = load i32, i32* @SDPIF_AGP_BASE, align 4
  %26 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %27 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 22
  %30 = call i32 @REG_UPDATE(i32 %24, i32 %25, i32 %29)
  %31 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BOT, align 4
  %32 = load i32, i32* @SDPIF_AGP_BOT, align 4
  %33 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %34 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 22
  %37 = call i32 @REG_UPDATE(i32 %31, i32 %32, i32 %36)
  %38 = load i32, i32* @DCHUBBUB_SDPIF_AGP_TOP, align 4
  %39 = load i32, i32* @SDPIF_AGP_TOP, align 4
  %40 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %41 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %44 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sub nsw i32 %46, 1
  %48 = ashr i32 %47, 22
  %49 = call i32 @REG_UPDATE(i32 %38, i32 %39, i32 %48)
  br label %88

50:                                               ; preds = %13
  %51 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BASE, align 4
  %52 = load i32, i32* @SDPIF_AGP_BASE, align 4
  %53 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %54 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 22
  %57 = call i32 @REG_UPDATE(i32 %51, i32 %52, i32 %56)
  %58 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BOT, align 4
  %59 = load i32, i32* @SDPIF_AGP_BOT, align 4
  %60 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %61 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 22
  %64 = call i32 @REG_UPDATE(i32 %58, i32 %59, i32 %63)
  %65 = load i32, i32* @DCHUBBUB_SDPIF_AGP_TOP, align 4
  %66 = load i32, i32* @SDPIF_AGP_TOP, align 4
  %67 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %68 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %71 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = sub nsw i32 %73, 1
  %75 = ashr i32 %74, 22
  %76 = call i32 @REG_UPDATE(i32 %65, i32 %66, i32 %75)
  br label %88

77:                                               ; preds = %13
  %78 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BASE, align 4
  %79 = load i32, i32* @SDPIF_AGP_BASE, align 4
  %80 = call i32 @REG_UPDATE(i32 %78, i32 %79, i32 0)
  %81 = load i32, i32* @DCHUBBUB_SDPIF_AGP_BOT, align 4
  %82 = load i32, i32* @SDPIF_AGP_BOT, align 4
  %83 = call i32 @REG_UPDATE(i32 %81, i32 %82, i32 262143)
  %84 = load i32, i32* @DCHUBBUB_SDPIF_AGP_TOP, align 4
  %85 = load i32, i32* @SDPIF_AGP_TOP, align 4
  %86 = call i32 @REG_UPDATE(i32 %84, i32 %85, i32 0)
  br label %88

87:                                               ; preds = %13
  br label %88

88:                                               ; preds = %87, %77, %50, %17
  %89 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %90 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  %91 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %92 = getelementptr inbounds %struct.dchub_init_data, %struct.dchub_init_data* %91, i32 0, i32 5
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %11
  ret void
}

declare dso_local %struct.dcn10_hubbub* @TO_DCN10_HUBBUB(%struct.hubbub*) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
