; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce_aux_transfer_with_retries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_aux.c_dce_aux_transfer_with_retries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddc_service = type { i32 }
%struct.aux_payload = type { i32, i32*, i32 }

@AUX_MAX_RETRIES = common dso_local global i32 0, align 4
@AUX_MAX_DEFER_RETRIES = common dso_local global i32 0, align 4
@AUX_MAX_I2C_DEFER_RETRIES = common dso_local global i32 0, align 4
@AUX_MAX_INVALID_REPLY_RETRIES = common dso_local global i32 0, align 4
@AUX_MAX_TIMEOUT_RETRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce_aux_transfer_with_retries(%struct.ddc_service* %0, %struct.aux_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ddc_service*, align 8
  %5 = alloca %struct.aux_payload*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ddc_service* %0, %struct.ddc_service** %4, align 8
  store %struct.aux_payload* %1, %struct.aux_payload** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %17 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %21 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %22 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %21, i32 0, i32 1
  store i32* %8, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %2
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %97, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AUX_MAX_RETRIES, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %100

28:                                               ; preds = %24
  %29 = load %struct.ddc_service*, %struct.ddc_service** %4, align 8
  %30 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %31 = call i32 @dce_aux_transfer_raw(%struct.ddc_service* %29, %struct.aux_payload* %30, i32* %10)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %95 [
    i32 135, label %33
    i32 138, label %77
    i32 136, label %86
    i32 139, label %94
    i32 137, label %94
  ]

33:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %34 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %35 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %75 [
    i32 134, label %38
    i32 133, label %60
    i32 128, label %60
    i32 129, label %60
    i32 130, label %67
    i32 132, label %74
    i32 131, label %74
  ]

38:                                               ; preds = %33
  %39 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %40 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %45 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* @AUX_MAX_RETRIES, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %101

55:                                               ; preds = %49
  %56 = call i32 @udelay(i32 300)
  br label %57

57:                                               ; preds = %55
  br label %59

58:                                               ; preds = %43, %38
  store i32 1, i32* %3, align 4
  br label %108

59:                                               ; preds = %57
  br label %76

60:                                               ; preds = %33, %33, %33
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* @AUX_MAX_DEFER_RETRIES, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %101

66:                                               ; preds = %60
  br label %76

67:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @AUX_MAX_I2C_DEFER_RETRIES, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %101

73:                                               ; preds = %67
  br label %76

74:                                               ; preds = %33, %33
  br label %75

75:                                               ; preds = %33, %74
  br label %101

76:                                               ; preds = %73, %66, %59
  br label %96

77:                                               ; preds = %28
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* @AUX_MAX_INVALID_REPLY_RETRIES, align 4
  %81 = icmp sge i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %101

83:                                               ; preds = %77
  %84 = call i32 @udelay(i32 400)
  br label %85

85:                                               ; preds = %83
  br label %96

86:                                               ; preds = %28
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @AUX_MAX_TIMEOUT_RETRIES, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %101

92:                                               ; preds = %86
  br label %93

93:                                               ; preds = %92
  br label %96

94:                                               ; preds = %28, %28
  br label %95

95:                                               ; preds = %28, %94
  br label %101

96:                                               ; preds = %93, %85, %76
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %24

100:                                              ; preds = %24
  br label %101

101:                                              ; preds = %100, %95, %91, %82, %75, %72, %65, %54
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.aux_payload*, %struct.aux_payload** %5, align 8
  %106 = getelementptr inbounds %struct.aux_payload, %struct.aux_payload* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %58
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @dce_aux_transfer_raw(%struct.ddc_service*, %struct.aux_payload*, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
