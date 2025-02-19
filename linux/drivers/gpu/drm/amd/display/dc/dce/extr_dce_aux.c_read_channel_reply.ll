; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_read_channel_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_read_channel_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_aux = type { i32 }
%struct.aux_engine_dce110 = type { i32 }

@AUX_SW_STATUS = common dso_local global i32 0, align 4
@AUX_SW_REPLY_BYTE_COUNT = common dso_local global i32 0, align 4
@AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK = common dso_local global i32 0, align 4
@AUX_SW_DATA = common dso_local global i32 0, align 4
@AUX_SW_INDEX = common dso_local global i32 0, align 4
@AUX_SW_AUTOINCREMENT_DISABLE = common dso_local global i32 0, align 4
@AUX_SW_DATA_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dce_aux*, i32, i32*, i32*, i32*)* @read_channel_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_channel_reply(%struct.dce_aux* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dce_aux*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.aux_engine_dce110*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dce_aux* %0, %struct.dce_aux** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.dce_aux*, %struct.dce_aux** %7, align 8
  %18 = call %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux* %17)
  store %struct.aux_engine_dce110* %18, %struct.aux_engine_dce110** %12, align 8
  %19 = load i32, i32* @AUX_SW_STATUS, align 4
  %20 = load i32, i32* @AUX_SW_REPLY_BYTE_COUNT, align 4
  %21 = call i32 @REG_GET(i32 %19, i32 %20, i32* %13)
  %22 = load i32*, i32** %11, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AUX_SW_STATUS__AUX_SW_HPD_DISCON_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %78

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %78

33:                                               ; preds = %29
  %34 = load i32, i32* @AUX_SW_DATA, align 4
  %35 = load i32, i32* @AUX_SW_INDEX, align 4
  %36 = load i32, i32* @AUX_SW_AUTOINCREMENT_DISABLE, align 4
  %37 = load i32, i32* @AUX_SW_DATA_RW, align 4
  %38 = call i32 @REG_UPDATE_SEQ_3(i32 %34, i32 %35, i32 0, i32 %36, i32 1, i32 %37, i32 1)
  %39 = load i32, i32* @AUX_SW_DATA, align 4
  %40 = load i32, i32* @AUX_SW_DATA, align 4
  %41 = call i32 @REG_GET(i32 %39, i32 %40, i32* %14)
  %42 = load i32, i32* %14, align 4
  %43 = ashr i32 %42, 4
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* %14, align 4
  %48 = load i32*, i32** %10, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %78

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* @AUX_SW_DATA, align 4
  %66 = load i32, i32* @AUX_SW_DATA, align 4
  %67 = call i32 @REG_GET(i32 %65, i32 %66, i32* %16)
  %68 = load i32, i32* %16, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %6, align 4
  br label %78

77:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %75, %58, %32, %28
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.aux_engine_dce110* @FROM_AUX_ENGINE(%struct.dce_aux*) #1

declare dso_local i32 @REG_GET(i32, i32, i32*) #1

declare dso_local i32 @REG_UPDATE_SEQ_3(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
