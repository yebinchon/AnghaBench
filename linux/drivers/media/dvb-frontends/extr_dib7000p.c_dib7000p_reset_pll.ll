; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib7000p.c_dib7000p_reset_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dibx000_bandwidth_config* }
%struct.dibx000_bandwidth_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SOC7090 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*)* @dib7000p_reset_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_reset_pll(%struct.dib7000p_state* %0) #0 {
  %2 = alloca %struct.dib7000p_state*, align 8
  %3 = alloca %struct.dibx000_bandwidth_config*, align 8
  %4 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %2, align 8
  %5 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %7, align 8
  %9 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %8, i64 0
  store %struct.dibx000_bandwidth_config* %9, %struct.dibx000_bandwidth_config** %3, align 8
  %10 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %11 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SOC7090, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %1
  %16 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %17 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %18 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = shl i32 %22, 13
  %24 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %25 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 12
  %28 = or i32 %23, %27
  %29 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %30 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 6
  %33 = or i32 %28, %32
  %34 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %35 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %16, i32 1856, i32 %37)
  br label %39

39:                                               ; preds = %45, %15
  %40 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %41 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %40, i32 1856)
  %42 = ashr i32 %41, 15
  %43 = and i32 %42, 1
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %39

46:                                               ; preds = %39
  %47 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %48 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %49 = call i32 @dib7000p_read_word(%struct.dib7000p_state* %48, i32 1857)
  %50 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %51 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = shl i32 %55, 15
  %57 = or i32 %49, %56
  %58 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %47, i32 1857, i32 %57)
  br label %126

59:                                               ; preds = %1
  %60 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %61 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 63
  %64 = shl i32 %63, 9
  %65 = or i32 32768, %64
  %66 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %67 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 7
  %70 = or i32 %65, %69
  %71 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %72 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 6
  %75 = or i32 %70, %74
  %76 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %77 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 5
  %80 = or i32 %75, %79
  %81 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %82 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 2
  %85 = or i32 %80, %84
  %86 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %87 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 1
  %90 = or i32 %85, %89
  store i32 %90, i32* %4, align 4
  %91 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %91, i32 900, i32 %92)
  %94 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %95 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %96 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 5
  %99 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %100 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 3
  %104 = shl i32 %103, 3
  %105 = or i32 %98, %104
  %106 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %107 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 1
  %110 = or i32 %105, %109
  %111 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %112 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %110, %113
  %115 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %94, i32 903, i32 %114)
  %116 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %117 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 15
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, 32767
  %122 = or i32 %119, %121
  store i32 %122, i32* %4, align 4
  %123 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %123, i32 900, i32 %124)
  br label %126

126:                                              ; preds = %59, %46
  %127 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %128 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %129 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = mul nsw i32 %130, 1000
  %132 = ashr i32 %131, 16
  %133 = and i32 %132, 65535
  %134 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %127, i32 18, i32 %133)
  %135 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %136 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %137 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %138, 1000
  %140 = and i32 %139, 65535
  %141 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %135, i32 19, i32 %140)
  %142 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %143 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %144 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %145, 16
  %147 = and i32 %146, 65535
  %148 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %142, i32 21, i32 %147)
  %149 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %150 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %151 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 65535
  %154 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %149, i32 22, i32 %153)
  %155 = load %struct.dib7000p_state*, %struct.dib7000p_state** %2, align 8
  %156 = load %struct.dibx000_bandwidth_config*, %struct.dibx000_bandwidth_config** %3, align 8
  %157 = getelementptr inbounds %struct.dibx000_bandwidth_config, %struct.dibx000_bandwidth_config* %156, i32 0, i32 12
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %155, i32 72, i32 %158)
  ret void
}

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

declare dso_local i32 @dib7000p_read_word(%struct.dib7000p_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
