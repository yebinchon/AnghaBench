; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_handle_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32, i32)* }
%struct.fw_request = type { i32 }

@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@RCODE_COMPLETE = common dso_local global i32 0, align 4
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@TCODE_WRITE_QUADLET_REQUEST = common dso_local global i32 0, align 4
@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@CSR_STATE_BIT_ABDICATE = common dso_local global i32 0, align 4
@BROADCAST_CHANNEL_VALID = common dso_local global i32 0, align 4
@BROADCAST_CHANNEL_INITIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @handle_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_registers(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %25 = load i64, i64* %17, align 8
  %26 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %27 = xor i64 %26, -1
  %28 = and i64 %25, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %21, align 4
  %30 = load i8*, i8** %18, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %22, align 8
  %32 = load i32, i32* @RCODE_COMPLETE, align 4
  store i32 %32, i32* %23, align 4
  %33 = load i32, i32* %21, align 4
  switch i32 %33, label %215 [
    i32 133, label %34
    i32 134, label %42
    i32 129, label %42
    i32 128, label %42
    i32 136, label %42
    i32 139, label %42
    i32 141, label %42
    i32 132, label %77
    i32 131, label %93
    i32 130, label %128
    i32 135, label %163
    i32 142, label %185
    i32 140, label %213
    i32 143, label %213
    i32 138, label %213
    i32 137, label %213
  ]

34:                                               ; preds = %10
  %35 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %36 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %40, i32* %23, align 4
  br label %217

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %10, %10, %10, %10, %10, %10, %41
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %48 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %47, i32 0, i32 5
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.fw_card*, i32)*, i32 (%struct.fw_card*, i32)** %50, align 8
  %52 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %53 = load i32, i32* %21, align 4
  %54 = call i32 %51(%struct.fw_card* %52, i32 %53)
  %55 = call i32 @cpu_to_be32(i32 %54)
  %56 = load i32*, i32** %22, align 8
  store i32 %55, i32* %56, align 4
  br label %76

57:                                               ; preds = %42
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %63 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %62, i32 0, i32 5
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32 (%struct.fw_card*, i32, i32)*, i32 (%struct.fw_card*, i32, i32)** %65, align 8
  %67 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %68 = load i32, i32* %21, align 4
  %69 = load i32*, i32** %22, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @be32_to_cpu(i32 %70)
  %72 = call i32 %66(%struct.fw_card* %67, i32 %68, i32 %71)
  br label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %74, i32* %23, align 4
  br label %75

75:                                               ; preds = %73, %61
  br label %76

76:                                               ; preds = %75, %46
  br label %217

77:                                               ; preds = %10
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %83 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %82, i32 0, i32 5
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32 (%struct.fw_card*, i32, i32)*, i32 (%struct.fw_card*, i32, i32)** %85, align 8
  %87 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %88 = load i32, i32* @CSR_STATE_BIT_ABDICATE, align 4
  %89 = call i32 %86(%struct.fw_card* %87, i32 129, i32 %88)
  br label %92

90:                                               ; preds = %77
  %91 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %91, i32* %23, align 4
  br label %92

92:                                               ; preds = %90, %81
  br label %217

93:                                               ; preds = %10
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %99 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @cpu_to_be32(i32 %100)
  %102 = load i32*, i32** %22, align 8
  store i32 %101, i32* %102, align 4
  br label %127

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %103
  %108 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %109 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %108, i32 0, i32 4
  %110 = load i64, i64* %24, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load i32*, i32** %22, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @be32_to_cpu(i32 %113)
  %115 = and i32 %114, 7
  %116 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %117 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %119 = call i32 @update_split_timeout(%struct.fw_card* %118)
  %120 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %121 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %120, i32 0, i32 4
  %122 = load i64, i64* %24, align 8
  %123 = call i32 @spin_unlock_irqrestore(i32* %121, i64 %122)
  br label %126

124:                                              ; preds = %103
  %125 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %125, i32* %23, align 4
  br label %126

126:                                              ; preds = %124, %107
  br label %127

127:                                              ; preds = %126, %97
  br label %217

128:                                              ; preds = %10
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %134 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @cpu_to_be32(i32 %135)
  %137 = load i32*, i32** %22, align 8
  store i32 %136, i32* %137, align 4
  br label %162

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %159

142:                                              ; preds = %138
  %143 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %144 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %143, i32 0, i32 4
  %145 = load i64, i64* %24, align 8
  %146 = call i32 @spin_lock_irqsave(i32* %144, i64 %145)
  %147 = load i32*, i32** %22, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @be32_to_cpu(i32 %148)
  %150 = and i32 %149, -524288
  %151 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %152 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %154 = call i32 @update_split_timeout(%struct.fw_card* %153)
  %155 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %156 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %155, i32 0, i32 4
  %157 = load i64, i64* %24, align 8
  %158 = call i32 @spin_unlock_irqrestore(i32* %156, i64 %157)
  br label %161

159:                                              ; preds = %138
  %160 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %160, i32* %23, align 4
  br label %161

161:                                              ; preds = %159, %142
  br label %162

162:                                              ; preds = %161, %132
  br label %217

163:                                              ; preds = %10
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %169 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load i32*, i32** %22, align 8
  store i32 %170, i32* %171, align 4
  br label %184

172:                                              ; preds = %163
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i32*, i32** %22, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %180 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  br label %183

181:                                              ; preds = %172
  %182 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %182, i32* %23, align 4
  br label %183

183:                                              ; preds = %181, %176
  br label %184

184:                                              ; preds = %183, %167
  br label %217

185:                                              ; preds = %10
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %191 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @cpu_to_be32(i32 %192)
  %194 = load i32*, i32** %22, align 8
  store i32 %193, i32* %194, align 4
  br label %212

195:                                              ; preds = %185
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* @TCODE_WRITE_QUADLET_REQUEST, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %209

199:                                              ; preds = %195
  %200 = load i32*, i32** %22, align 8
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @be32_to_cpu(i32 %201)
  %203 = load i32, i32* @BROADCAST_CHANNEL_VALID, align 4
  %204 = and i32 %202, %203
  %205 = load i32, i32* @BROADCAST_CHANNEL_INITIAL, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %208 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  br label %211

209:                                              ; preds = %195
  %210 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %210, i32* %23, align 4
  br label %211

211:                                              ; preds = %209, %199
  br label %212

212:                                              ; preds = %211, %189
  br label %217

213:                                              ; preds = %10, %10, %10, %10
  %214 = call i32 (...) @BUG()
  br label %217

215:                                              ; preds = %10
  %216 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %216, i32* %23, align 4
  br label %217

217:                                              ; preds = %215, %213, %212, %184, %162, %127, %92, %76, %39
  %218 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %219 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %220 = load i32, i32* %23, align 4
  %221 = call i32 @fw_send_response(%struct.fw_card* %218, %struct.fw_request* %219, i32 %220)
  ret void
}

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @update_split_timeout(%struct.fw_card*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
