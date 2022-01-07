; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_btr_loopbw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_algo.c_stb0899_dvbs2_set_btr_loopbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config*, %struct.stb0899_internal }
%struct.stb0899_config = type { i32, i32 }
%struct.stb0899_internal = type { i32, i32 }

@STB0899_S2DEMOD = common dso_local global i32 0, align 4
@BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@KBTR0_RSHFT = common dso_local global i32 0, align 4
@KBTR0 = common dso_local global i32 0, align 4
@KBTR1_RSHFT = common dso_local global i32 0, align 4
@KBTR1 = common dso_local global i32 0, align 4
@KBTR2_RSHFT = common dso_local global i32 0, align 4
@STB0899_BASE_BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@STB0899_OFF0_BTR_LOOP_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stb0899_state*)* @stb0899_dvbs2_set_btr_loopbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb0899_dvbs2_set_btr_loopbw(%struct.stb0899_state* %0) #0 {
  %2 = alloca %struct.stb0899_state*, align 8
  %3 = alloca %struct.stb0899_internal*, align 8
  %4 = alloca %struct.stb0899_config*, align 8
  %5 = alloca i32, align 4
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.stb0899_state* %0, %struct.stb0899_state** %2, align 8
  %23 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %24 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %23, i32 0, i32 1
  store %struct.stb0899_internal* %24, %struct.stb0899_internal** %3, align 8
  %25 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %26 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %25, i32 0, i32 0
  %27 = load %struct.stb0899_config*, %struct.stb0899_config** %26, align 8
  store %struct.stb0899_config* %27, %struct.stb0899_config** %4, align 8
  store i32 23, i32* %5, align 4
  store i32 707, i32* %6, align 4
  store i32 60, i32* %7, align 4
  %28 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %29 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %30, 2
  %32 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %33 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 5, %34
  %36 = sdiv i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  br label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 1, %39 ], [ %41, %40 ]
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @Log2Int(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 1, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %5, align 4
  %49 = mul nsw i32 %48, 576000
  store i32 %49, i32* %5, align 4
  %50 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %51 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 1, %52
  %54 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %55 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %56, 1000
  %58 = sdiv i32 %53, %57
  store i32 %58, i32* %18, align 4
  %59 = load %struct.stb0899_internal*, %struct.stb0899_internal** %3, align 8
  %60 = getelementptr inbounds %struct.stb0899_internal, %struct.stb0899_internal* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1000000
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32, i32* %18, align 4
  %66 = mul nsw i32 %65, %64
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %168

69:                                               ; preds = %42
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 4, %73
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %76, 1000000
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %7, align 4
  %79 = mul nsw i32 %78, 1000
  %80 = mul nsw i32 2, %79
  %81 = mul nsw i32 %80, 40
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %19, align 4
  %85 = sdiv i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load i32, i32* %18, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %19, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %18, align 4
  %96 = sdiv i32 %94, %95
  store i32 %96, i32* %20, align 4
  %97 = load i32, i32* %20, align 4
  %98 = mul nsw i32 %97, 100
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %20, align 4
  %100 = call i32 @Log2Int(i32 %99)
  %101 = call i32 @Log2Int(i32 10000)
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 2
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 -1, %104
  %106 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %107 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %15, align 4
  %112 = shl i32 1, %111
  %113 = sdiv i32 %110, %112
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = sdiv i32 %114, 10000
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %21, align 4
  %117 = add nsw i32 %116, 15
  %118 = call i32 @Log2Int(i32 %117)
  %119 = sub nsw i32 %118, 20
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %16, align 4
  %121 = mul nsw i32 -1, %120
  %122 = load %struct.stb0899_config*, %struct.stb0899_config** %4, align 8
  %123 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 0, %127
  %129 = shl i32 1, %128
  %130 = mul nsw i32 %126, %129
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sdiv i32 %131, 1000000
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp sgt i32 %133, 15
  br i1 %134, label %135, label %138

135:                                              ; preds = %69
  %136 = load i32, i32* %12, align 4
  %137 = sub nsw i32 %136, 15
  store i32 %137, i32* %14, align 4
  store i32 15, i32* %12, align 4
  br label %138

138:                                              ; preds = %135, %69
  %139 = load i32, i32* @STB0899_S2DEMOD, align 4
  %140 = load i32, i32* @BTR_LOOP_GAIN, align 4
  %141 = call i32 @STB0899_READ_S2REG(i32 %139, i32 %140)
  store i32 %141, i32* %22, align 4
  %142 = load i32, i32* @KBTR0_RSHFT, align 4
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @STB0899_SETFIELD_VAL(i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @KBTR0, align 4
  %147 = load i32, i32* %22, align 4
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @STB0899_SETFIELD_VAL(i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* @KBTR1_RSHFT, align 4
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %10, align 4
  %153 = call i32 @STB0899_SETFIELD_VAL(i32 %150, i32 %151, i32 %152)
  %154 = load i32, i32* @KBTR1, align 4
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @STB0899_SETFIELD_VAL(i32 %154, i32 %155, i32 %156)
  %158 = load i32, i32* @KBTR2_RSHFT, align 4
  %159 = load i32, i32* %22, align 4
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @STB0899_SETFIELD_VAL(i32 %158, i32 %159, i32 %160)
  %162 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %163 = load i32, i32* @STB0899_S2DEMOD, align 4
  %164 = load i32, i32* @STB0899_BASE_BTR_LOOP_GAIN, align 4
  %165 = load i32, i32* @STB0899_OFF0_BTR_LOOP_GAIN, align 4
  %166 = load i32, i32* %22, align 4
  %167 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %174

168:                                              ; preds = %42
  %169 = load %struct.stb0899_state*, %struct.stb0899_state** %2, align 8
  %170 = load i32, i32* @STB0899_S2DEMOD, align 4
  %171 = load i32, i32* @STB0899_BASE_BTR_LOOP_GAIN, align 4
  %172 = load i32, i32* @STB0899_OFF0_BTR_LOOP_GAIN, align 4
  %173 = call i32 @stb0899_write_s2reg(%struct.stb0899_state* %169, i32 %170, i32 %171, i32 %172, i32 805967)
  br label %174

174:                                              ; preds = %168, %138
  ret void
}

declare dso_local i32 @Log2Int(i32) #1

declare dso_local i32 @STB0899_READ_S2REG(i32, i32) #1

declare dso_local i32 @STB0899_SETFIELD_VAL(i32, i32, i32) #1

declare dso_local i32 @stb0899_write_s2reg(%struct.stb0899_state*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
