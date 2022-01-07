; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_tmg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_tmg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_params = type { i64 }
%struct.stb0899_internal = type { i64, i64, i64, i32, i16, i32 }

@NOTIMING = common dso_local global i64 0, align 8
@TIMINGOK = common dso_local global i64 0, align 8
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"------->TIMING OK ! Derot Freq = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_tmg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_tmg(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_params*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %11, i32 0, i32 2
  store %struct.stb0899_internal* %12, %struct.stb0899_internal** %3, align 8
  %13 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %14 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %13, i32 0, i32 1
  store %struct.stb0899_params* %14, %struct.stb0899_params** %4, align 8
  store i16 0, i16* %6, align 2
  store i16 3, i16* %8, align 2
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* @NOTIMING, align 8
  %16 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %17 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %19 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sdiv i64 %20, 2
  %22 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %23 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = sdiv i64 %21, %24
  %26 = trunc i64 %25 to i16
  store i16 %26, i16* %7, align 2
  %27 = load %struct.stb0899_params*, %struct.stb0899_params** %4, align 8
  %28 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sdiv i64 %29, 2
  %31 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %32 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = sdiv i64 %30, %33
  %35 = trunc i64 %34 to i16
  store i16 %35, i16* %5, align 2
  br label %36

36:                                               ; preds = %105, %1
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %38 = call i64 @stb0899_check_tmg(%struct.stb0899_state* %37)
  %39 = load i64, i64* @TIMINGOK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i16, i16* %8, align 2
  %43 = sext i16 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %47, label %112

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %52 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i16, i16* %5, align 2
  %56 = sext i16 %55 to i32
  %57 = mul nsw i32 %54, %56
  %58 = load i16, i16* %6, align 2
  %59 = sext i16 %58 to i32
  %60 = add nsw i32 %59, %57
  %61 = trunc i32 %60 to i16
  store i16 %61, i16* %6, align 2
  %62 = load i16, i16* %6, align 2
  %63 = call signext i16 @abs(i16 signext %62)
  %64 = sext i16 %63 to i32
  %65 = load i16, i16* %7, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp sgt i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load i16, i16* %8, align 2
  %70 = add i16 %69, -1
  store i16 %70, i16* %8, align 2
  br label %71

71:                                               ; preds = %68, %47
  %72 = load i16, i16* %8, align 2
  %73 = icmp ne i16 %72, 0
  br i1 %73, label %74, label %105

74:                                               ; preds = %71
  %75 = load i32, i32* @CFRM, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %79 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %78, i32 0, i32 4
  %80 = load i16, i16* %79, align 4
  %81 = sext i16 %80 to i32
  %82 = load i16, i16* %6, align 2
  %83 = sext i16 %82 to i32
  %84 = mul nsw i32 %81, %83
  %85 = trunc i32 %84 to i16
  %86 = call i32 @MSB(i16 signext %85)
  %87 = call i32 @STB0899_SETFIELD_VAL(i32 %75, i32 %77, i32 %86)
  %88 = load i32, i32* @CFRL, align 4
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %92 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %91, i32 0, i32 4
  %93 = load i16, i16* %92, align 4
  %94 = sext i16 %93 to i32
  %95 = load i16, i16* %6, align 2
  %96 = sext i16 %95 to i32
  %97 = mul nsw i32 %94, %96
  %98 = trunc i32 %97 to i16
  %99 = call i32 @LSB(i16 signext %98)
  %100 = call i32 @STB0899_SETFIELD_VAL(i32 %88, i32 %90, i32 %99)
  %101 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %102 = load i32, i32* @STB0899_CFRM, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %104 = call i32 @stb0899_write_regs(%struct.stb0899_state* %101, i32 %102, i32* %103, i32 2)
  br label %105

105:                                              ; preds = %74, %71
  %106 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %107 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 0, %108
  %110 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %111 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  br label %36

112:                                              ; preds = %45
  %113 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %114 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TIMINGOK, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %112
  %119 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %120 = load i32, i32* @STB0899_CFRM, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %122 = call i32 @stb0899_read_regs(%struct.stb0899_state* %119, i32 %120, i32* %121, i32 2)
  %123 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %124 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %123, i32 0, i32 4
  %125 = load i16, i16* %124, align 4
  %126 = sext i16 %125 to i32
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @MAKEWORD16(i32 %128, i32 %130)
  %132 = mul nsw i32 %126, %131
  %133 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %134 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 8
  %135 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %136 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @FE_DEBUG, align 4
  %139 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %140 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @dprintk(i32 %137, i32 %138, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %118, %112
  %144 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %145 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  ret i32 %147
}

declare dso_local i64 @stb0899_check_tmg(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
