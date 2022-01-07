; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_search_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { i32, %struct.stb0899_internal }
%struct.stb0899_internal = type { i64, i64, i64, i16, i32, i32, i16 }

@NOCARRIER = common dso_local global i64 0, align 8
@STB0899_CFD = common dso_local global i32 0, align 4
@CFD_ON = common dso_local global i32 0, align 4
@FE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Derot Freq=%d, mclk=%d\00", align 1
@CFRM = common dso_local global i32 0, align 4
@CFRL = common dso_local global i32 0, align 4
@STB0899_CFRM = common dso_local global i32 0, align 4
@CARRIEROK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"----> CARRIER OK !, Derot Freq=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*)* @stb0899_search_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_search_carrier(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %11 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %12 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %11, i32 0, i32 1
  store %struct.stb0899_internal* %12, %struct.stb0899_internal** %3, align 8
  store i16 0, i16* %4, align 2
  store i16 0, i16* %5, align 2
  store i16 3, i16* %7, align 2
  store i32 0, i32* %8, align 4
  %13 = load i64, i64* @NOCARRIER, align 8
  %14 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %15 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %17 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sdiv i64 %18, 2
  %20 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %21 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = sdiv i64 %19, %22
  %24 = trunc i64 %23 to i16
  store i16 %24, i16* %6, align 2
  %25 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %26 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %25, i32 0, i32 3
  %27 = load i16, i16* %26, align 8
  store i16 %27, i16* %4, align 2
  %28 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %29 = load i32, i32* @STB0899_CFD, align 4
  %30 = call i32 @stb0899_read_reg(%struct.stb0899_state* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @CFD_ON, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @STB0899_SETFIELD_VAL(i32 %31, i32 %32, i32 1)
  %34 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %35 = load i32, i32* @STB0899_CFD, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @stb0899_write_reg(%struct.stb0899_state* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %141, %1
  %39 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %40 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FE_DEBUG, align 4
  %43 = load i16, i16* %4, align 2
  %44 = sext i16 %43 to i32
  %45 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %46 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %41, i32 %42, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %44, i64 %47)
  %49 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %50 = call i64 @stb0899_check_carrier(%struct.stb0899_state* %49)
  %51 = load i64, i64* @NOCARRIER, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %124

53:                                               ; preds = %38
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i16, i16* %4, align 2
  store i16 %56, i16* %5, align 2
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %59 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %63 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = load i16, i16* %4, align 2
  %67 = sext i16 %66 to i32
  %68 = add nsw i32 %67, %65
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %4, align 2
  %70 = load i16, i16* %4, align 2
  %71 = call signext i16 @abs(i16 signext %70)
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* %6, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %53
  %77 = load i16, i16* %7, align 2
  %78 = add i16 %77, -1
  store i16 %78, i16* %7, align 2
  br label %79

79:                                               ; preds = %76, %53
  %80 = load i16, i16* %7, align 2
  %81 = icmp ne i16 %80, 0
  br i1 %81, label %82, label %123

82:                                               ; preds = %79
  %83 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %84 = load i32, i32* @STB0899_CFD, align 4
  %85 = call i32 @stb0899_read_reg(%struct.stb0899_state* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @CFD_ON, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @STB0899_SETFIELD_VAL(i32 %86, i32 %87, i32 1)
  %89 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %90 = load i32, i32* @STB0899_CFD, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @stb0899_write_reg(%struct.stb0899_state* %89, i32 %90, i32 %91)
  %93 = load i32, i32* @CFRM, align 4
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %97 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %96, i32 0, i32 6
  %98 = load i16, i16* %97, align 4
  %99 = sext i16 %98 to i32
  %100 = load i16, i16* %4, align 2
  %101 = sext i16 %100 to i32
  %102 = mul nsw i32 %99, %101
  %103 = trunc i32 %102 to i16
  %104 = call i32 @MSB(i16 signext %103)
  %105 = call i32 @STB0899_SETFIELD_VAL(i32 %93, i32 %95, i32 %104)
  %106 = load i32, i32* @CFRL, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %110 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %109, i32 0, i32 6
  %111 = load i16, i16* %110, align 4
  %112 = sext i16 %111 to i32
  %113 = load i16, i16* %4, align 2
  %114 = sext i16 %113 to i32
  %115 = mul nsw i32 %112, %114
  %116 = trunc i32 %115 to i16
  %117 = call i32 @LSB(i16 signext %116)
  %118 = call i32 @STB0899_SETFIELD_VAL(i32 %106, i32 %108, i32 %117)
  %119 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %120 = load i32, i32* @STB0899_CFRM, align 4
  %121 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %122 = call i32 @stb0899_write_regs(%struct.stb0899_state* %119, i32 %120, i32* %121, i32 2)
  br label %123

123:                                              ; preds = %82, %79
  br label %124

124:                                              ; preds = %123, %38
  %125 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %126 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 0, %127
  %129 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %130 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  br label %131

131:                                              ; preds = %124
  %132 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %133 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CARRIEROK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = load i16, i16* %7, align 2
  %139 = sext i16 %138 to i32
  %140 = icmp ne i32 %139, 0
  br label %141

141:                                              ; preds = %137, %131
  %142 = phi i1 [ false, %131 ], [ %140, %137 ]
  br i1 %142, label %38, label %143

143:                                              ; preds = %141
  %144 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %145 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @CARRIEROK, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %143
  %150 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %151 = load i32, i32* @STB0899_CFRM, align 4
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %153 = call i32 @stb0899_read_regs(%struct.stb0899_state* %150, i32 %151, i32* %152, i32 2)
  %154 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %155 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %154, i32 0, i32 6
  %156 = load i16, i16* %155, align 4
  %157 = sext i16 %156 to i32
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @MAKEWORD16(i32 %159, i32 %161)
  %163 = mul nsw i32 %157, %162
  %164 = trunc i32 %163 to i16
  %165 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %166 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %165, i32 0, i32 3
  store i16 %164, i16* %166, align 8
  %167 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %168 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @FE_DEBUG, align 4
  %171 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %172 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %171, i32 0, i32 3
  %173 = load i16, i16* %172, align 8
  %174 = sext i16 %173 to i32
  %175 = call i32 (i32, i32, i32, i8*, i32, ...) @dprintk(i32 %169, i32 %170, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %180

176:                                              ; preds = %143
  %177 = load i16, i16* %5, align 2
  %178 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %179 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %178, i32 0, i32 3
  store i16 %177, i16* %179, align 8
  br label %180

180:                                              ; preds = %176, %149
  %181 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %182 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  ret i32 %184
}

declare dso_local i32 @stb0899_read_reg(%struct.stb0899_state*, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

declare dso_local i32 @dprintk(i32, i32, i32, i8*, i32, ...) #1

declare dso_local i64 @stb0899_check_carrier(%struct.stb0899_state*) #1

declare dso_local signext i16 @abs(i16 signext) #1

declare dso_local i32 @MSB(i16 signext) #1

declare dso_local i32 @LSB(i16 signext) #1

declare dso_local i32 @stb0899_write_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @stb0899_read_regs(%struct.stb0899_state*, i32, i32*, i32) #1

declare dso_local i32 @MAKEWORD16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
