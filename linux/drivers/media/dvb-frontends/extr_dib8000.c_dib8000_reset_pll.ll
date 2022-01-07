; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"clk_cfg1: 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_reset_pll(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %6 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %7 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %8, align 8
  store %struct.dibx000_bandwidth_config* %9, %struct.dibx000_bandwidth_config** %3, align 8
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %11 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 32912
  br i1 %13, label %14, label %134

14:                                               ; preds = %1
  %15 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %16 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %17 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 8
  %20 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %21 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 0
  %24 = or i32 %19, %23
  %25 = call i32 @dib8000_write_word(%struct.dib8000_state* %15, i32 901, i32 %24)
  %26 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %27 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 8
  %30 = or i32 1024, %29
  %31 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %32 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 5
  %35 = or i32 %30, %34
  %36 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %37 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 4
  %40 = or i32 %35, %39
  %41 = or i32 %40, 8
  %42 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %43 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 1
  %46 = or i32 %41, %45
  %47 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %48 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 0
  %51 = or i32 %46, %50
  store i32 %51, i32* %4, align 4
  %52 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dib8000_write_word(%struct.dib8000_state* %52, i32 902, i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 65527
  %57 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %58 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 3
  %61 = or i32 %56, %60
  store i32 %61, i32* %4, align 4
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @dib8000_write_word(%struct.dib8000_state* %62, i32 902, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %68 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %69, align 8
  %71 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %14
  %75 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %76 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %77 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %78, 8
  %80 = or i32 0, %79
  %81 = sext i32 %80 to i64
  %82 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %83 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 7
  %86 = or i64 %81, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @dib8000_write_word(%struct.dib8000_state* %75, i32 904, i32 %87)
  br label %133

89:                                               ; preds = %14
  %90 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %91 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %89
  %96 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %97 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %98 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 3
  %102 = shl i32 %101, 10
  %103 = or i32 4096, %102
  %104 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %105 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %106, 8
  %108 = or i32 %103, %107
  %109 = sext i32 %108 to i64
  %110 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %111 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %110, i32 0, i32 8
  %112 = load i64, i64* %111, align 8
  %113 = shl i64 %112, 7
  %114 = or i64 %109, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @dib8000_write_word(%struct.dib8000_state* %96, i32 904, i32 %115)
  br label %132

117:                                              ; preds = %89
  %118 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %119 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %120 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 8
  %123 = or i32 7168, %122
  %124 = sext i32 %123 to i64
  %125 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %126 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = shl i64 %127, 7
  %129 = or i64 %124, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @dib8000_write_word(%struct.dib8000_state* %118, i32 904, i32 %130)
  br label %132

132:                                              ; preds = %117, %95
  br label %133

133:                                              ; preds = %132, %74
  br label %183

134:                                              ; preds = %1
  %135 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %136 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %137 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = shl i32 %141, 13
  %143 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %144 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 %145, 12
  %147 = or i32 %142, %146
  %148 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %149 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 6
  %152 = or i32 %147, %151
  %153 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %154 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %152, %155
  %157 = call i32 @dib8000_write_word(%struct.dib8000_state* %135, i32 1856, i32 %156)
  %158 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %159 = call i32 @dib8000_read_word(%struct.dib8000_state* %158, i32 1857)
  store i32 %159, i32* %5, align 4
  %160 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %163 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = shl i32 %167, 15
  %169 = or i32 %161, %168
  %170 = call i32 @dib8000_write_word(%struct.dib8000_state* %160, i32 1857, i32 %169)
  %171 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %172 = call i32 @dib8000_read_word(%struct.dib8000_state* %171, i32 1858)
  store i32 %172, i32* %5, align 4
  %173 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %174 = load i32, i32* %5, align 4
  %175 = or i32 %174, 1
  %176 = call i32 @dib8000_write_word(%struct.dib8000_state* %173, i32 1858, i32 %175)
  %177 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %178 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %179 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = shl i32 %180, 8
  %182 = call i32 @dib8000_write_word(%struct.dib8000_state* %177, i32 904, i32 %181)
  br label %183

183:                                              ; preds = %134, %133
  %184 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %185 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %186 = call i32 @dib8000_reset_pll_common(%struct.dib8000_state* %184, %struct.dibx000_bandwidth_config* %185)
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dib8000_reset_pll_common(%struct.dib8000_state*, %struct.dibx000_bandwidth_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
