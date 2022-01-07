; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sh_keysc.c_sh_keysc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.sh_keysc_priv = type { i32, i32, %struct.sh_keysc_info }
%struct.sh_keysc_info = type { i64, i32*, i32 }

@sh_keysc_mode = common dso_local global %struct.TYPE_2__* null, align 8
@keys = common dso_local global i32 0, align 4
@SH_KEYSC_MAXKEYS = common dso_local global i32 0, align 4
@keys0 = common dso_local global i32 0, align 4
@keys1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"isr!\0A\00", align 1
@KYCR2 = common dso_local global i32 0, align 4
@KYCR2_IRQ_DISABLED = common dso_local global i32 0, align 4
@KYOUTDR = common dso_local global i32 0, align 4
@KYINDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"keys\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"last_keys\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"keys0\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"keys1\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sh_keysc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_keysc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.sh_keysc_priv*, align 8
  %7 = alloca %struct.sh_keysc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.platform_device*
  store %struct.platform_device* %16, %struct.platform_device** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = call %struct.sh_keysc_priv* @platform_get_drvdata(%struct.platform_device* %17)
  store %struct.sh_keysc_priv* %18, %struct.sh_keysc_priv** %6, align 8
  %19 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %20 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %19, i32 0, i32 2
  store %struct.sh_keysc_info* %20, %struct.sh_keysc_info** %7, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %22 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %23 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sh_keysc_mode, align 8
  %29 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %30 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @keys, align 4
  %36 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %37 = call i32 @DECLARE_BITMAP(i32 %35, i32 %36)
  %38 = load i32, i32* @keys0, align 4
  %39 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %40 = call i32 @DECLARE_BITMAP(i32 %38, i32 %39)
  %41 = load i32, i32* @keys1, align 4
  %42 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %43 = call i32 @DECLARE_BITMAP(i32 %41, i32 %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @keys1, align 4
  %48 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %49 = call i32 @bitmap_fill(i32 %47, i32 %48)
  %50 = load i32, i32* @keys0, align 4
  %51 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %52 = call i32 @bitmap_zero(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %141, %2
  %54 = load i32, i32* @keys, align 4
  %55 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %56 = call i32 @bitmap_zero(i32 %54, i32 %55)
  store i8 0, i8* %10, align 1
  %57 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %58 = load i32, i32* @KYCR2, align 4
  %59 = load i32, i32* @KYCR2_IRQ_DISABLED, align 4
  %60 = call i32 @sh_keysc_write(%struct.sh_keysc_priv* %57, i32 %58, i32 %59)
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %116, %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %119

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %14, align 4
  %69 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %70 = load i32, i32* @KYOUTDR, align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul nsw i32 %71, 2
  %73 = shl i32 3, %72
  %74 = xor i32 65535, %73
  %75 = call i32 @sh_keysc_write(%struct.sh_keysc_priv* %69, i32 %70, i32 %74)
  %76 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %77 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @udelay(i32 %78)
  %80 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %81 = load i32, i32* @KYINDR, align 4
  %82 = call i32 @sh_keysc_read(%struct.sh_keysc_priv* %80, i32 %81)
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %11, align 1
  store i32 0, i32* %13, align 4
  br label %84

84:                                               ; preds = %102, %65
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %84
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* %13, align 4
  %92 = shl i32 1, %91
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @keys, align 4
  %100 = call i32 @__set_bit(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %84

105:                                              ; preds = %84
  %106 = load i8, i8* %11, align 1
  %107 = zext i8 %106 to i32
  %108 = load i32, i32* %9, align 4
  %109 = shl i32 1, %108
  %110 = sub nsw i32 %109, 1
  %111 = xor i32 %107, %110
  %112 = load i8, i8* %10, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %10, align 1
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %61

119:                                              ; preds = %61
  %120 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %121 = load i8, i8* %10, align 1
  %122 = call i32 @sh_keysc_level_mode(%struct.sh_keysc_priv* %120, i8 zeroext %121)
  %123 = load i32, i32* @keys, align 4
  %124 = load i32, i32* @keys, align 4
  %125 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %126 = call i32 @bitmap_complement(i32 %123, i32 %124, i32 %125)
  %127 = load i32, i32* @keys1, align 4
  %128 = load i32, i32* @keys1, align 4
  %129 = load i32, i32* @keys, align 4
  %130 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %131 = call i32 @bitmap_and(i32 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* @keys0, align 4
  %133 = load i32, i32* @keys0, align 4
  %134 = load i32, i32* @keys, align 4
  %135 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %136 = call i32 @bitmap_or(i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %138 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %137, i32 0, i32 0
  %139 = load i32, i32* @keys, align 4
  %140 = call i32 @sh_keysc_map_dbg(i32* %138, i32 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %119
  %142 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %143 = load i32, i32* @KYCR2, align 4
  %144 = call i32 @sh_keysc_read(%struct.sh_keysc_priv* %142, i32 %143)
  %145 = and i32 %144, 1
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %53, label %147

147:                                              ; preds = %141
  %148 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %151 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @sh_keysc_map_dbg(i32* %149, i32 %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %154 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = load i32, i32* @keys0, align 4
  %157 = call i32 @sh_keysc_map_dbg(i32* %155, i32 %156, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %158 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load i32, i32* @keys1, align 4
  %161 = call i32 @sh_keysc_map_dbg(i32* %159, i32 %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %162

162:                                              ; preds = %228, %147
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @SH_KEYSC_MAXKEYS, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %231

166:                                              ; preds = %162
  %167 = load %struct.sh_keysc_info*, %struct.sh_keysc_info** %7, align 8
  %168 = getelementptr inbounds %struct.sh_keysc_info, %struct.sh_keysc_info* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %166
  br label %228

177:                                              ; preds = %166
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @keys0, align 4
  %180 = call i64 @test_bit(i32 %178, i32 %179)
  %181 = load i32, i32* %12, align 4
  %182 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %183 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i64 @test_bit(i32 %181, i32 %184)
  %186 = icmp eq i64 %180, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %177
  br label %228

188:                                              ; preds = %177
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @keys1, align 4
  %191 = call i64 @test_bit(i32 %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @keys0, align 4
  %196 = call i64 @test_bit(i32 %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %193, %188
  %199 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %200 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @EV_KEY, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @input_event(i32 %201, i32 %202, i32 %203, i32 1)
  %205 = load i32, i32* %12, align 4
  %206 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %207 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @__set_bit(i32 %205, i32 %208)
  br label %210

210:                                              ; preds = %198, %193
  %211 = load i32, i32* %12, align 4
  %212 = load i32, i32* @keys1, align 4
  %213 = call i64 @test_bit(i32 %211, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %210
  %216 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %217 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @EV_KEY, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @input_event(i32 %218, i32 %219, i32 %220, i32 0)
  %222 = load i32, i32* %12, align 4
  %223 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %224 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @__clear_bit(i32 %222, i32 %225)
  br label %227

227:                                              ; preds = %215, %210
  br label %228

228:                                              ; preds = %227, %187, %176
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %162

231:                                              ; preds = %162
  %232 = load %struct.sh_keysc_priv*, %struct.sh_keysc_priv** %6, align 8
  %233 = getelementptr inbounds %struct.sh_keysc_priv, %struct.sh_keysc_priv* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @input_sync(i32 %234)
  %236 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %236
}

declare dso_local %struct.sh_keysc_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @bitmap_fill(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @sh_keysc_write(%struct.sh_keysc_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sh_keysc_read(%struct.sh_keysc_priv*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @sh_keysc_level_mode(%struct.sh_keysc_priv*, i8 zeroext) #1

declare dso_local i32 @bitmap_complement(i32, i32, i32) #1

declare dso_local i32 @bitmap_and(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @sh_keysc_map_dbg(i32*, i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
