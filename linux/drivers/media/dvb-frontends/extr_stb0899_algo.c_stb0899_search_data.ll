; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_params, %struct.stb0899_internal }
%struct.stb0899_params = type { i64 }
%struct.stb0899_internal = type { i64, i64, i16, i64, i32, i16 }

@CARRIEROK = common dso_local global i64 0, align 8
@DATAOK = common dso_local global i64 0, align 8
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Derot freq=%d, mclk=%d\00", align 1
@STB0899_CFD = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@STB0899_IQSWAP = common dso_local global i32 0, align 4
@SYM = common dso_local global i32 0, align 4
@IQ_SWAP_ON = common dso_local global i16 0, align 2
@IQ_SWAP_OFF = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [31 x i8] c"------> DATAOK ! Derot Freq=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_data(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stb0899_internal*, align 8
  %11 = alloca %struct.stb0899_params*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  store i16 3, i16* %6, align 2
  store i32 1, i32* %9, align 4
  %12 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %13 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %12, i32 0, i32 2
  store %struct.stb0899_internal* %13, %struct.stb0899_internal** %10, align 8
  %14 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %15 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %14, i32 0, i32 1
  store %struct.stb0899_params* %15, %struct.stb0899_params** %11, align 8
  %16 = load %struct.stb0899_params*, %struct.stb0899_params** %11, align 8
  %17 = getelementptr inbounds %struct.stb0899_params, %struct.stb0899_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sdiv i64 %18, 4
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sdiv i64 %19, %22
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %4, align 2
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sdiv i64 %27, 2
  %29 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %30 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sdiv i64 %28, %31
  %33 = trunc i64 %32 to i16
  store i16 %33, i16* %5, align 2
  %34 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %35 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %34, i32 0, i32 2
  %36 = load i16, i16* %35, align 8
  store i16 %36, i16* %3, align 2
  br label %37

37:                                               ; preds = %146, %1
  %38 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %39 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CARRIEROK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %37
  %44 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %45 = call i64 @stb0899_check_data(%struct.stb0899_state* %44)
  %46 = load i64, i64* @DATAOK, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %129

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %51 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  %54 = load i16, i16* %4, align 2
  %55 = sext i16 %54 to i32
  %56 = mul nsw i32 %53, %55
  %57 = load i16, i16* %3, align 2
  %58 = sext i16 %57 to i32
  %59 = add nsw i32 %58, %56
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %3, align 2
  %61 = load i16, i16* %3, align 2
  %62 = call signext i16 @abs(i16 signext %61)
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %5, align 2
  %65 = sext i16 %64 to i32
  %66 = icmp sgt i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %48
  %68 = load i16, i16* %6, align 2
  %69 = add i16 %68, -1
  store i16 %69, i16* %6, align 2
  br label %70

70:                                               ; preds = %67, %48
  %71 = load i16, i16* %6, align 2
  %72 = icmp ne i16 %71, 0
  br i1 %72, label %73, label %128

73:                                               ; preds = %70
  %74 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %75 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FE_DEBUG, align 4
  %78 = load i16, i16* %3, align 2
  %79 = sext i16 %78 to i32
  %80 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %81 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %76, i32 %77, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %82)
  %84 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %85 = load i32, i32* @STB0899_CFD, align 4
  %86 = call i32 @stb0899_read_reg(%struct.stb0899_state* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @CFD_ON, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @STB0899_SETFIELD_VAL(i32 %87, i32 %88, i32 1)
  %90 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %91 = load i32, i32* @STB0899_CFD, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @stb0899_write_reg(%struct.stb0899_state* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @CFRM, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %98 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %97, i32 0, i32 5
  %99 = load i16, i16* %98, align 4
  %100 = sext i16 %99 to i32
  %101 = load i16, i16* %3, align 2
  %102 = sext i16 %101 to i32
  %103 = mul nsw i32 %100, %102
  %104 = trunc i32 %103 to i16
  %105 = call i32 @MSB(i16 signext %104)
  %106 = call i32 @STB0899_SETFIELD_VAL(i32 %94, i32 %96, i32 %105)
  %107 = load i32, i32* @CFRL, align 4
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %111 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %110, i32 0, i32 5
  %112 = load i16, i16* %111, align 4
  %113 = sext i16 %112 to i32
  %114 = load i16, i16* %3, align 2
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %113, %115
  %117 = trunc i32 %116 to i16
  %118 = call i32 @LSB(i16 signext %117)
  %119 = call i32 @STB0899_SETFIELD_VAL(i32 %107, i32 %109, i32 %118)
  %120 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %121 = load i32, i32* @STB0899_CFRM, align 4
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %123 = call i32 @stb0899_write_regs(%struct.stb0899_state* %120, i32 %121, i32* %122, i32 2)
  %124 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %125 = call i32 @stb0899_check_carrier(%struct.stb0899_state* %124)
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %73, %70
  br label %129

129:                                              ; preds = %128, %43
  %130 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %131 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 0, %132
  %134 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %135 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %134, i32 0, i32 4
  store i32 %133, i32* %135, align 8
  br label %136

136:                                              ; preds = %129
  %137 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %138 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DATAOK, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load i16, i16* %6, align 2
  %144 = sext i16 %143 to i32
  %145 = icmp ne i32 %144, 0
  br label %146

146:                                              ; preds = %142, %136
  %147 = phi i1 [ false, %136 ], [ %145, %142 ]
  br i1 %147, label %37, label %148

148:                                              ; preds = %146
  %149 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %150 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @DATAOK, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %197

154:                                              ; preds = %148
  %155 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %156 = load i32, i32* @STB0899_CFRM, align 4
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %158 = call i32 @stb0899_read_regs(%struct.stb0899_state* %155, i32 %156, i32* %157, i32 2)
  %159 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %160 = load i32, i32* @STB0899_IQSWAP, align 4
  %161 = call i32 @stb0899_read_reg(%struct.stb0899_state* %159, i32 %160)
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* @SYM, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i64 @STB0899_GETFIELD(i32 %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %154
  %167 = load i16, i16* @IQ_SWAP_ON, align 2
  %168 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %169 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %168, i32 0, i32 5
  store i16 %167, i16* %169, align 4
  br label %174

170:                                              ; preds = %154
  %171 = load i16, i16* @IQ_SWAP_OFF, align 2
  %172 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %173 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %172, i32 0, i32 5
  store i16 %171, i16* %173, align 4
  br label %174

174:                                              ; preds = %170, %166
  %175 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %176 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %175, i32 0, i32 5
  %177 = load i16, i16* %176, align 4
  %178 = sext i16 %177 to i32
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @MAKEWORD16(i32 %180, i32 %182)
  %184 = mul nsw i32 %178, %183
  %185 = trunc i32 %184 to i16
  %186 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %187 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %186, i32 0, i32 2
  store i16 %185, i16* %187, align 8
  %188 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %189 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @FE_DEBUG, align 4
  %192 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %193 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %192, i32 0, i32 2
  %194 = load i16, i16* %193, align 8
  %195 = sext i16 %194 to i32
  %196 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %190, i32 %191, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %174, %148
  %198 = load %struct.stb0899_internal*, %struct.stb0899_internal** %10, align 8
  %199 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  ret i32 %201
}

declare dso_local i64 @stb0899_check_data(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_check_carrier(%struct.stb0899_state*) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i64 @STB0899_GETFIELD(i32, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
