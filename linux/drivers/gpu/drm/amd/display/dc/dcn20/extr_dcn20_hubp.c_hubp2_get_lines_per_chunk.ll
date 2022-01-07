; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_get_lines_per_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubp.c_hubp2_get_lines_per_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURSOR_LINE_PER_CHUNK_16 = common dso_local global i32 0, align 4
@CURSOR_MODE_MONO = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_1BIT_AND = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_8 = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_4 = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_2 = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_64BIT_FP_PRE_MULTIPLIED = common dso_local global i32 0, align 4
@CURSOR_MODE_COLOR_64BIT_FP_UN_PRE_MULTIPLIED = common dso_local global i32 0, align 4
@CURSOR_LINE_PER_CHUNK_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubp2_get_lines_per_chunk(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @CURSOR_MODE_MONO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %11, i32* %5, align 4
  br label %115

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CURSOR_MODE_COLOR_1BIT_AND, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @CURSOR_MODE_COLOR_PRE_MULTIPLIED_ALPHA, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CURSOR_MODE_COLOR_UN_PRE_MULTIPLIED_ALPHA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20, %16, %12
  %25 = load i32, i32* %3, align 4
  %26 = icmp uge i32 %25, 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = icmp ule i32 %28, 32
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %31, i32* %5, align 4
  br label %59

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %3, align 4
  %34 = icmp uge i32 %33, 33
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp ule i32 %36, 64
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @CURSOR_LINE_PER_CHUNK_8, align 4
  store i32 %39, i32* %5, align 4
  br label %58

40:                                               ; preds = %35, %32
  %41 = load i32, i32* %3, align 4
  %42 = icmp uge i32 %41, 65
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = icmp ule i32 %44, 128
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @CURSOR_LINE_PER_CHUNK_4, align 4
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %3, align 4
  %50 = icmp uge i32 %49, 129
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp ule i32 %52, 256
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @CURSOR_LINE_PER_CHUNK_2, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %51, %48
  br label %57

57:                                               ; preds = %56, %46
  br label %58

58:                                               ; preds = %57, %38
  br label %59

59:                                               ; preds = %58, %30
  br label %114

60:                                               ; preds = %20
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CURSOR_MODE_COLOR_64BIT_FP_PRE_MULTIPLIED, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @CURSOR_MODE_COLOR_64BIT_FP_UN_PRE_MULTIPLIED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %113

68:                                               ; preds = %64, %60
  %69 = load i32, i32* %3, align 4
  %70 = icmp uge i32 %69, 1
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = icmp ule i32 %72, 16
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @CURSOR_LINE_PER_CHUNK_16, align 4
  store i32 %75, i32* %5, align 4
  br label %112

76:                                               ; preds = %71, %68
  %77 = load i32, i32* %3, align 4
  %78 = icmp uge i32 %77, 17
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = icmp ule i32 %80, 32
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @CURSOR_LINE_PER_CHUNK_8, align 4
  store i32 %83, i32* %5, align 4
  br label %111

84:                                               ; preds = %79, %76
  %85 = load i32, i32* %3, align 4
  %86 = icmp uge i32 %85, 33
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %3, align 4
  %89 = icmp ule i32 %88, 64
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @CURSOR_LINE_PER_CHUNK_4, align 4
  store i32 %91, i32* %5, align 4
  br label %110

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %3, align 4
  %94 = icmp uge i32 %93, 65
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %3, align 4
  %97 = icmp ule i32 %96, 128
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @CURSOR_LINE_PER_CHUNK_2, align 4
  store i32 %99, i32* %5, align 4
  br label %109

100:                                              ; preds = %95, %92
  %101 = load i32, i32* %3, align 4
  %102 = icmp uge i32 %101, 129
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = icmp ule i32 %104, 256
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @CURSOR_LINE_PER_CHUNK_1, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %103, %100
  br label %109

109:                                              ; preds = %108, %98
  br label %110

110:                                              ; preds = %109, %90
  br label %111

111:                                              ; preds = %110, %82
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %64
  br label %114

114:                                              ; preds = %113, %59
  br label %115

115:                                              ; preds = %114, %10
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
