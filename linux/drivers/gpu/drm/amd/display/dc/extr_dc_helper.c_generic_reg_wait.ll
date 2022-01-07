; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/extr_dc_helper.c_generic_reg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_context = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"REG_WAIT taking a while: %dms in %s line:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"REG_WAIT timeout %dus * %d tries - %s line:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_reg_wait(%struct.dc_context* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.dc_context* %0, %struct.dc_context** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  store i32 %8, i32* %18, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %16, align 4
  %24 = mul i32 %22, %23
  %25 = icmp ule i32 %24, 3000000
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  store i32 0, i32* %21, align 4
  br label %28

28:                                               ; preds = %82, %9
  %29 = load i32, i32* %21, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %85

32:                                               ; preds = %28
  %33 = load i32, i32* %21, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %32
  %36 = load i32, i32* %15, align 4
  %37 = icmp uge i32 %36, 1000
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = udiv i32 %39, 1000
  %41 = call i32 @msleep(i32 %40)
  br label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %15, align 4
  %44 = icmp ugt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @udelay(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %38
  br label %50

50:                                               ; preds = %49, %32
  %51 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @dm_read_reg(%struct.dc_context* %51, i64 %52)
  store i64 %53, i64* %20, align 8
  %54 = load i64, i64* %20, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i64 @get_reg_field_value_ex(i64 %54, i64 %55, i64 %56)
  store i64 %57, i64* %19, align 8
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %14, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %50
  %62 = load i32, i32* %21, align 4
  %63 = load i32, i32* %15, align 4
  %64 = mul i32 %62, %63
  %65 = icmp ugt i32 %64, 1000
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %68 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul i32 %73, %74
  %76 = udiv i32 %75, 1000
  %77 = load i8*, i8** %17, align 8
  %78 = load i32, i32* %18, align 4
  %79 = call i32 @DC_LOG_DC(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %66, %61
  br label %98

81:                                               ; preds = %50
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %21, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %21, align 4
  br label %28

85:                                               ; preds = %28
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i8*, i8** %17, align 8
  %89 = load i32, i32* %18, align 4
  %90 = call i32 @DC_LOG_WARNING(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i8* %88, i32 %89)
  %91 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %92 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IS_FPGA_MAXIMUS_DC(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %85
  %97 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %98

98:                                               ; preds = %80, %96, %85
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @dm_read_reg(%struct.dc_context*, i64) #1

declare dso_local i64 @get_reg_field_value_ex(i64, i64, i64) #1

declare dso_local i32 @IS_FPGA_MAXIMUS_DC(i32) #1

declare dso_local i32 @DC_LOG_DC(i8*, i32, i8*, i32) #1

declare dso_local i32 @DC_LOG_WARNING(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
