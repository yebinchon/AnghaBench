; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_config_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-di.c_ipu_di_config_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu_di = type { %struct.clk*, %struct.clk*, %struct.clk*, %struct.TYPE_3__* }
%struct.clk = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ipu_di_signal_cfg = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IPU_DI_CLKMODE_EXT = common dso_local global i32 0, align 4
@IPU_DI_CLKMODE_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"  IPU clock can give %lu with divider %u, error %d.%u%%\0A\00", align 1
@DI_BS_CLKGEN0 = common dso_local global i32 0, align 4
@DI_BS_CLKGEN1 = common dso_local global i32 0, align 4
@DI_GENERAL = common dso_local global i32 0, align 4
@DI_GEN_DI_CLK_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Want %luHz IPU %luHz DI %luHz using %s, %luHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"IPU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipu_di*, %struct.ipu_di_signal_cfg*)* @ipu_di_config_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipu_di_config_clock(%struct.ipu_di* %0, %struct.ipu_di_signal_cfg* %1) #0 {
  %3 = alloca %struct.ipu_di*, align 8
  %4 = alloca %struct.ipu_di_signal_cfg*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ipu_di* %0, %struct.ipu_di** %3, align 8
  store %struct.ipu_di_signal_cfg* %1, %struct.ipu_di_signal_cfg** %4, align 8
  %16 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPU_DI_CLKMODE_EXT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %24 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %23, i32 0, i32 1
  %25 = load %struct.clk*, %struct.clk** %24, align 8
  store %struct.clk* %25, %struct.clk** %5, align 8
  %26 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IPU_DI_CLKMODE_SYNC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 16, i32* %6, align 4
  br label %53

33:                                               ; preds = %22
  %34 = load %struct.clk*, %struct.clk** %5, align 8
  %35 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %36 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_set_rate(%struct.clk* %34, i32 %38)
  %40 = load %struct.clk*, %struct.clk** %5, align 8
  %41 = call i32 @clk_get_rate(%struct.clk* %40)
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %45 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_ROUND_CLOSEST(i64 %43, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @clamp(i32 %49, i32 1, i32 255)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %33, %32
  br label %130

54:                                               ; preds = %2
  %55 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %56 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %55, i32 0, i32 2
  %57 = load %struct.clk*, %struct.clk** %56, align 8
  %58 = call i32 @clk_get_rate(%struct.clk* %57)
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @DIV_ROUND_CLOSEST(i64 %60, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @clamp(i32 %66, i32 1, i32 255)
  store i32 %67, i32* %12, align 4
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %12, align 4
  %70 = zext i32 %69 to i64
  %71 = udiv i64 %68, %70
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %74 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 1000
  %78 = sext i32 %77 to i64
  %79 = udiv i64 %72, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %13, align 4
  %81 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %82 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %81, i32 0, i32 3
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i64, i64* %10, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = sub i32 %89, 1000
  %91 = sdiv i32 %90, 10
  %92 = load i32, i32* %13, align 4
  %93 = urem i32 %92, 10
  %94 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, i32 %91, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ult i32 %95, 1010
  br i1 %96, label %97, label %106

97:                                               ; preds = %54
  %98 = load i32, i32* %13, align 4
  %99 = icmp uge i32 %98, 990
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %102 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %101, i32 0, i32 2
  %103 = load %struct.clk*, %struct.clk** %102, align 8
  store %struct.clk* %103, %struct.clk** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = shl i32 %104, 4
  store i32 %105, i32* %6, align 4
  br label %129

106:                                              ; preds = %97, %54
  %107 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %108 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %107, i32 0, i32 1
  %109 = load %struct.clk*, %struct.clk** %108, align 8
  store %struct.clk* %109, %struct.clk** %5, align 8
  %110 = load %struct.clk*, %struct.clk** %5, align 8
  %111 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %112 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @clk_set_rate(%struct.clk* %110, i32 %114)
  %116 = load %struct.clk*, %struct.clk** %5, align 8
  %117 = call i32 @clk_get_rate(%struct.clk* %116)
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %14, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %121 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @DIV_ROUND_CLOSEST(i64 %119, i32 %123)
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @clamp(i32 %125, i32 1, i32 255)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = shl i32 %127, 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %106, %100
  br label %130

130:                                              ; preds = %129, %53
  %131 = load %struct.clk*, %struct.clk** %5, align 8
  %132 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %133 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %132, i32 0, i32 0
  store %struct.clk* %131, %struct.clk** %133, align 8
  %134 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @DI_BS_CLKGEN0, align 4
  %137 = call i32 @ipu_di_write(%struct.ipu_di* %134, i32 %135, i32 %136)
  %138 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %139 = load i32, i32* %6, align 4
  %140 = lshr i32 %139, 4
  %141 = shl i32 %140, 16
  %142 = load i32, i32* @DI_BS_CLKGEN1, align 4
  %143 = call i32 @ipu_di_write(%struct.ipu_di* %138, i32 %141, i32 %142)
  %144 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %145 = load i32, i32* @DI_GENERAL, align 4
  %146 = call i32 @ipu_di_read(%struct.ipu_di* %144, i32 %145)
  %147 = load i32, i32* @DI_GEN_DI_CLK_EXT, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  store i32 %149, i32* %7, align 4
  %150 = load %struct.clk*, %struct.clk** %5, align 8
  %151 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %152 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %151, i32 0, i32 1
  %153 = load %struct.clk*, %struct.clk** %152, align 8
  %154 = icmp eq %struct.clk* %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %130
  %156 = load i32, i32* @DI_GEN_DI_CLK_EXT, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %130
  %160 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @DI_GENERAL, align 4
  %163 = call i32 @ipu_di_write(%struct.ipu_di* %160, i32 %161, i32 %162)
  %164 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %165 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %164, i32 0, i32 3
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ipu_di_signal_cfg*, %struct.ipu_di_signal_cfg** %4, align 8
  %170 = getelementptr inbounds %struct.ipu_di_signal_cfg, %struct.ipu_di_signal_cfg* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %174 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %173, i32 0, i32 2
  %175 = load %struct.clk*, %struct.clk** %174, align 8
  %176 = call i32 @clk_get_rate(%struct.clk* %175)
  %177 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %178 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %177, i32 0, i32 1
  %179 = load %struct.clk*, %struct.clk** %178, align 8
  %180 = call i32 @clk_get_rate(%struct.clk* %179)
  %181 = load %struct.clk*, %struct.clk** %5, align 8
  %182 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %183 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %182, i32 0, i32 1
  %184 = load %struct.clk*, %struct.clk** %183, align 8
  %185 = icmp eq %struct.clk* %181, %184
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %188 = load %struct.ipu_di*, %struct.ipu_di** %3, align 8
  %189 = getelementptr inbounds %struct.ipu_di, %struct.ipu_di* %188, i32 0, i32 0
  %190 = load %struct.clk*, %struct.clk** %189, align 8
  %191 = call i32 @clk_get_rate(%struct.clk* %190)
  %192 = load i32, i32* %6, align 4
  %193 = lshr i32 %192, 4
  %194 = udiv i32 %191, %193
  %195 = call i32 (i32, i8*, i32, i32, i32, ...) @dev_dbg(i32 %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %172, i32 %176, i32 %180, i8* %187, i32 %194)
  ret void
}

declare dso_local i32 @clk_set_rate(%struct.clk*, i32) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @ipu_di_write(%struct.ipu_di*, i32, i32) #1

declare dso_local i32 @ipu_di_read(%struct.ipu_di*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
