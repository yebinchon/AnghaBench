; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_aes_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.s5p_aes_dev = type { i32, i32, i32, i32, %struct.ablkcipher_request*, i32, i32, i32, i32 }
%struct.ablkcipher_request = type { i32 }

@FCINTSTAT = common dso_local global i32 0, align 4
@SSS_FCINTSTAT_BRDMAINT = common dso_local global i32 0, align 4
@SSS_FCINTSTAT_BTDMAINT = common dso_local global i32 0, align 4
@SSS_FCINTSTAT_HRDMAINT = common dso_local global i32 0, align 4
@FCINTPEND = common dso_local global i32 0, align 4
@SSS_FCINTSTAT_HDONEINT = common dso_local global i32 0, align 4
@SSS_FCINTSTAT_HPARTINT = common dso_local global i32 0, align 4
@SSS_HASH_STATUS_PARTIAL_DONE = common dso_local global i32 0, align 4
@SSS_HASH_STATUS_MSG_DONE = common dso_local global i32 0, align 4
@HASH_FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@SSS_REG_HASH_STATUS = common dso_local global i32 0, align 4
@SSS_REG_HASH_CTRL_PAUSE = common dso_local global i32 0, align 4
@SSS_HASH_PAUSE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s5p_aes_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_aes_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.s5p_aes_dev*, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.platform_device*
  store %struct.platform_device* %18, %struct.platform_device** %5, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %20 = call %struct.s5p_aes_dev* @platform_get_drvdata(%struct.platform_device* %19)
  store %struct.s5p_aes_dev* %20, %struct.s5p_aes_dev** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %22 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %21, i32 0, i32 2
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %26 = load i32, i32* @FCINTSTAT, align 4
  %27 = call i32 @SSS_READ(%struct.s5p_aes_dev* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @SSS_FCINTSTAT_BRDMAINT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %34 = call i32 @s5p_aes_rx(%struct.s5p_aes_dev* %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @SSS_FCINTSTAT_BTDMAINT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %42 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @sg_is_last(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %49 = call i32 @s5p_aes_tx(%struct.s5p_aes_dev* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %35
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @SSS_FCINTSTAT_HRDMAINT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %57 = call i32 @s5p_hash_rx(%struct.s5p_aes_dev* %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* @SSS_FCINTSTAT_BRDMAINT, align 4
  %61 = load i32, i32* @SSS_FCINTSTAT_BTDMAINT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SSS_FCINTSTAT_HRDMAINT, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %59, %64
  store i32 %65, i32* %15, align 4
  %66 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %67 = load i32, i32* @FCINTPEND, align 4
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @SSS_WRITE(%struct.s5p_aes_dev* %66, i32 %67, i32 %68)
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @SSS_FCINTSTAT_HDONEINT, align 4
  %72 = load i32, i32* @SSS_FCINTSTAT_HPARTINT, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %58
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @SSS_FCINTSTAT_HPARTINT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @SSS_HASH_STATUS_PARTIAL_DONE, align 4
  store i32 %82, i32* %15, align 4
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @SSS_FCINTSTAT_HDONEINT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* @SSS_HASH_STATUS_MSG_DONE, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* @HASH_FLAGS_OUTPUT_READY, align 4
  %92 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %93 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %92, i32 0, i32 8
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %96 = load i32, i32* @SSS_REG_HASH_STATUS, align 4
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @s5p_hash_write(%struct.s5p_aes_dev* %95, i32 %96, i32 %97)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %90, %58
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %16, align 4
  br label %168

104:                                              ; preds = %99
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %16, align 4
  br label %168

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %109
  %113 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %114 = call i32 @s5p_sg_done(%struct.s5p_aes_dev* %113)
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %119 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %120 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev* %118, i32 %121)
  br label %123

123:                                              ; preds = %117, %112
  %124 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %125 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %124, i32 0, i32 2
  %126 = load i64, i64* %13, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %129 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %128, i32 0, i32 4
  %130 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %129, align 8
  %131 = call i32 @s5p_aes_complete(%struct.ablkcipher_request* %130, i32 0)
  %132 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %133 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %132, i32 0, i32 7
  %134 = call i32 @tasklet_schedule(i32* %133)
  br label %167

135:                                              ; preds = %109
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %140 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %141 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @s5p_set_dma_outdata(%struct.s5p_aes_dev* %139, i32 %142)
  br label %144

144:                                              ; preds = %138, %135
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %149 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %150 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @s5p_set_dma_indata(%struct.s5p_aes_dev* %148, i32 %151)
  br label %153

153:                                              ; preds = %147, %144
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %158 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %159 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev* %157, i32 %160)
  br label %162

162:                                              ; preds = %156, %153
  %163 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %164 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %163, i32 0, i32 2
  %165 = load i64, i64* %13, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  br label %167

167:                                              ; preds = %162, %123
  br label %192

168:                                              ; preds = %107, %102
  %169 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %170 = call i32 @s5p_sg_done(%struct.s5p_aes_dev* %169)
  %171 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %172 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %171, i32 0, i32 0
  store i32 0, i32* %172, align 8
  %173 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %174 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %173, i32 0, i32 4
  %175 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %174, align 8
  store %struct.ablkcipher_request* %175, %struct.ablkcipher_request** %7, align 8
  %176 = load i32, i32* %10, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %184

178:                                              ; preds = %168
  %179 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %180 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %181 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev* %179, i32 %182)
  br label %184

184:                                              ; preds = %178, %168
  %185 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %186 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %185, i32 0, i32 2
  %187 = load i64, i64* %13, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  %189 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @s5p_aes_complete(%struct.ablkcipher_request* %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %167
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %197 = getelementptr inbounds %struct.s5p_aes_dev, %struct.s5p_aes_dev* %196, i32 0, i32 1
  %198 = call i32 @tasklet_schedule(i32* %197)
  br label %208

199:                                              ; preds = %192
  %200 = load i32, i32* %10, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %207

202:                                              ; preds = %199
  %203 = load %struct.s5p_aes_dev*, %struct.s5p_aes_dev** %6, align 8
  %204 = load i32, i32* @SSS_REG_HASH_CTRL_PAUSE, align 4
  %205 = load i32, i32* @SSS_HASH_PAUSE, align 4
  %206 = call i32 @s5p_hash_write(%struct.s5p_aes_dev* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %202, %199
  br label %208

208:                                              ; preds = %207, %195
  %209 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %209
}

declare dso_local %struct.s5p_aes_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SSS_READ(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_aes_rx(%struct.s5p_aes_dev*) #1

declare dso_local i64 @sg_is_last(i32) #1

declare dso_local i32 @s5p_aes_tx(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_hash_rx(%struct.s5p_aes_dev*) #1

declare dso_local i32 @SSS_WRITE(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @s5p_hash_write(%struct.s5p_aes_dev*, i32, i32) #1

declare dso_local i32 @s5p_sg_done(%struct.s5p_aes_dev*) #1

declare dso_local i32 @s5p_set_dma_hashdata(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @s5p_aes_complete(%struct.ablkcipher_request*, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @s5p_set_dma_outdata(%struct.s5p_aes_dev*, i32) #1

declare dso_local i32 @s5p_set_dma_indata(%struct.s5p_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
