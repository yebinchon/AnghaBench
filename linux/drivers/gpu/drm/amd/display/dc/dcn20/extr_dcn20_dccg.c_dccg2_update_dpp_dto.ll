; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_update_dpp_dto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_dccg.c_dccg2_update_dpp_dto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dccg = type { i32 }
%struct.dcn_dccg = type { i32 }

@DPPCLK_DTO_PARAM = common dso_local global i32* null, align 8
@DPPCLK0_DTO_PHASE = common dso_local global i32 0, align 4
@DPPCLK0_DTO_MODULO = common dso_local global i32 0, align 4
@DPPCLK_DTO_CTRL = common dso_local global i32 0, align 4
@DPPCLK_DTO_ENABLE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccg2_update_dpp_dto(%struct.dccg* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dccg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dcn_dccg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dccg* %0, %struct.dccg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.dccg*, %struct.dccg** %5, align 8
  %15 = call %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg* %14)
  store %struct.dcn_dccg* %15, %struct.dcn_dccg** %9, align 8
  %16 = load %struct.dccg*, %struct.dccg** %5, align 8
  %17 = getelementptr inbounds %struct.dccg, %struct.dccg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %114

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %114

23:                                               ; preds = %20
  %24 = load %struct.dccg*, %struct.dccg** %5, align 8
  %25 = getelementptr inbounds %struct.dccg, %struct.dccg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sle i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %53

34:                                               ; preds = %23
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 254
  %37 = sdiv i32 %36, 255
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sdiv i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %41, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %13, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %34
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %34
  br label %53

53:                                               ; preds = %52, %23
  %54 = load i32*, i32** @DPPCLK_DTO_PARAM, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DPPCLK0_DTO_PHASE, align 4
  %60 = load i32, i32* @DPPCLK0_DTO_MODULO, align 4
  %61 = call i32 @REG_GET_2(i32 %58, i32 %59, i32* %11, i32 %60, i32* %12)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %53
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %68, %69
  %71 = icmp sge i32 %67, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i32*, i32** @DPPCLK_DTO_PARAM, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @DPPCLK0_DTO_PHASE, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @DPPCLK0_DTO_MODULO, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @REG_SET_2(i32 %77, i32 0, i32 %78, i32 %79, i32 %80, i32 %81)
  br label %94

83:                                               ; preds = %64
  %84 = load i32*, i32** @DPPCLK_DTO_PARAM, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DPPCLK0_DTO_PHASE, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @DPPCLK0_DTO_MODULO, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @REG_SET_2(i32 %88, i32 0, i32 %89, i32 %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %83, %72
  br label %106

95:                                               ; preds = %53
  %96 = load i32*, i32** @DPPCLK_DTO_PARAM, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DPPCLK0_DTO_PHASE, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @DPPCLK0_DTO_MODULO, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @REG_SET_2(i32 %100, i32 0, i32 %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %95, %94
  %107 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %108 = load i32*, i32** @DPPCLK_DTO_ENABLE, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_UPDATE(i32 %107, i32 %112, i32 1)
  br label %122

114:                                              ; preds = %20, %4
  %115 = load i32, i32* @DPPCLK_DTO_CTRL, align 4
  %116 = load i32*, i32** @DPPCLK_DTO_ENABLE, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @REG_UPDATE(i32 %115, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %114, %106
  ret void
}

declare dso_local %struct.dcn_dccg* @TO_DCN_DCCG(%struct.dccg*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @REG_GET_2(i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
