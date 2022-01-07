; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_got_iframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_got_iframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { i64, %struct.layer2* }
%struct.layer2 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }

@FLG_MOD128 = common dso_local global i32 0, align 4
@FLG_OWN_BUSY = common dso_local global i32 0, align 4
@FLG_REJEXC = common dso_local global i32 0, align 4
@FLG_ACK_PEND = common dso_local global i32 0, align 4
@DL_DATA_IND = common dso_local global i32 0, align 4
@REJ = common dso_local global i32 0, align 4
@RSP = common dso_local global i32 0, align 4
@FLG_PEER_BUSY = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i64 0, align 8
@EV_L2_T203 = common dso_local global i32 0, align 4
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_got_iframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_got_iframe(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.FsmInst*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.FsmInst* %0, %struct.FsmInst** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %14 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %13, i32 0, i32 1
  %15 = load %struct.layer2*, %struct.layer2** %14, align 8
  store %struct.layer2* %15, %struct.layer2** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  %18 = load %struct.layer2*, %struct.layer2** %7, align 8
  %19 = call i32 @l2addrsize(%struct.layer2* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @FLG_MOD128, align 4
  %21 = load %struct.layer2*, %struct.layer2** %7, align 8
  %22 = getelementptr inbounds %struct.layer2, %struct.layer2* %21, i32 0, i32 3
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %3
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  %54 = and i32 %53, 127
  store i32 %54, i32* %12, align 4
  br label %82

55:                                               ; preds = %3
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 16
  store i32 %63, i32* %9, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 1
  %72 = and i32 %71, 7
  store i32 %72, i32* %11, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 5
  %81 = and i32 %80, 7
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %55, %25
  %83 = load i32, i32* @FLG_OWN_BUSY, align 4
  %84 = load %struct.layer2*, %struct.layer2** %7, align 8
  %85 = getelementptr inbounds %struct.layer2, %struct.layer2* %84, i32 0, i32 3
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %82
  %89 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %90 = call i32 @dev_kfree_skb(%struct.sk_buff* %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.layer2*, %struct.layer2** %7, align 8
  %95 = call i32 @enquiry_response(%struct.layer2* %94)
  br label %96

96:                                               ; preds = %93, %88
  br label %174

97:                                               ; preds = %82
  %98 = load %struct.layer2*, %struct.layer2** %7, align 8
  %99 = getelementptr inbounds %struct.layer2, %struct.layer2* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %147

103:                                              ; preds = %97
  %104 = load %struct.layer2*, %struct.layer2** %7, align 8
  %105 = getelementptr inbounds %struct.layer2, %struct.layer2* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* @FLG_MOD128, align 4
  %109 = load %struct.layer2*, %struct.layer2** %7, align 8
  %110 = getelementptr inbounds %struct.layer2, %struct.layer2* %109, i32 0, i32 3
  %111 = call i64 @test_bit(i32 %108, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.layer2*, %struct.layer2** %7, align 8
  %115 = getelementptr inbounds %struct.layer2, %struct.layer2* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = srem i32 %116, 128
  store i32 %117, i32* %115, align 4
  br label %123

118:                                              ; preds = %103
  %119 = load %struct.layer2*, %struct.layer2** %7, align 8
  %120 = getelementptr inbounds %struct.layer2, %struct.layer2* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = srem i32 %121, 8
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* @FLG_REJEXC, align 4
  %125 = load %struct.layer2*, %struct.layer2** %7, align 8
  %126 = getelementptr inbounds %struct.layer2, %struct.layer2* %125, i32 0, i32 3
  %127 = call i64 @test_and_clear_bit(i32 %124, i32* %126)
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.layer2*, %struct.layer2** %7, align 8
  %132 = call i32 @enquiry_response(%struct.layer2* %131)
  br label %138

133:                                              ; preds = %123
  %134 = load i32, i32* @FLG_ACK_PEND, align 4
  %135 = load %struct.layer2*, %struct.layer2** %7, align 8
  %136 = getelementptr inbounds %struct.layer2, %struct.layer2* %135, i32 0, i32 3
  %137 = call i64 @test_and_set_bit(i32 %134, i32* %136)
  br label %138

138:                                              ; preds = %133, %130
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = load %struct.layer2*, %struct.layer2** %7, align 8
  %141 = call i32 @l2headersize(%struct.layer2* %140, i32 0)
  %142 = call i32 @skb_pull(%struct.sk_buff* %139, i32 %141)
  %143 = load %struct.layer2*, %struct.layer2** %7, align 8
  %144 = load i32, i32* @DL_DATA_IND, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = call i32 @l2up(%struct.layer2* %143, i32 %144, %struct.sk_buff* %145)
  br label %173

147:                                              ; preds = %97
  %148 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %149 = call i32 @dev_kfree_skb(%struct.sk_buff* %148)
  %150 = load i32, i32* @FLG_REJEXC, align 4
  %151 = load %struct.layer2*, %struct.layer2** %7, align 8
  %152 = getelementptr inbounds %struct.layer2, %struct.layer2* %151, i32 0, i32 3
  %153 = call i64 @test_and_set_bit(i32 %150, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.layer2*, %struct.layer2** %7, align 8
  %160 = call i32 @enquiry_response(%struct.layer2* %159)
  br label %161

161:                                              ; preds = %158, %155
  br label %172

162:                                              ; preds = %147
  %163 = load %struct.layer2*, %struct.layer2** %7, align 8
  %164 = load i32, i32* @REJ, align 4
  %165 = load i32, i32* @RSP, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @enquiry_cr(%struct.layer2* %163, i32 %164, i32 %165, i32 %166)
  %168 = load i32, i32* @FLG_ACK_PEND, align 4
  %169 = load %struct.layer2*, %struct.layer2** %7, align 8
  %170 = getelementptr inbounds %struct.layer2, %struct.layer2* %169, i32 0, i32 3
  %171 = call i64 @test_and_clear_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %162, %161
  br label %173

173:                                              ; preds = %172, %138
  br label %174

174:                                              ; preds = %173, %96
  %175 = load %struct.layer2*, %struct.layer2** %7, align 8
  %176 = load i32, i32* %12, align 4
  %177 = call i64 @legalnr(%struct.layer2* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %222

179:                                              ; preds = %174
  %180 = load i32, i32* @FLG_PEER_BUSY, align 4
  %181 = load %struct.layer2*, %struct.layer2** %7, align 8
  %182 = getelementptr inbounds %struct.layer2, %struct.layer2* %181, i32 0, i32 3
  %183 = call i64 @test_bit(i32 %180, i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %218, label %185

185:                                              ; preds = %179
  %186 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %187 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @ST_L2_7, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %218

191:                                              ; preds = %185
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.layer2*, %struct.layer2** %7, align 8
  %194 = getelementptr inbounds %struct.layer2, %struct.layer2* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = icmp eq i32 %192, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %191
  %198 = load %struct.layer2*, %struct.layer2** %7, align 8
  %199 = call i32 @stop_t200(%struct.layer2* %198, i32 13)
  %200 = load %struct.layer2*, %struct.layer2** %7, align 8
  %201 = getelementptr inbounds %struct.layer2, %struct.layer2* %200, i32 0, i32 6
  %202 = load %struct.layer2*, %struct.layer2** %7, align 8
  %203 = getelementptr inbounds %struct.layer2, %struct.layer2* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @EV_L2_T203, align 4
  %206 = call i32 @mISDN_FsmRestartTimer(i32* %201, i32 %204, i32 %205, i32* null, i32 7)
  br label %217

207:                                              ; preds = %191
  %208 = load i32, i32* %12, align 4
  %209 = load %struct.layer2*, %struct.layer2** %7, align 8
  %210 = getelementptr inbounds %struct.layer2, %struct.layer2* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load %struct.layer2*, %struct.layer2** %7, align 8
  %215 = call i32 @restart_t200(%struct.layer2* %214, i32 14)
  br label %216

216:                                              ; preds = %213, %207
  br label %217

217:                                              ; preds = %216, %197
  br label %218

218:                                              ; preds = %217, %185, %179
  %219 = load %struct.layer2*, %struct.layer2** %7, align 8
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @setva(%struct.layer2* %219, i32 %220)
  br label %225

222:                                              ; preds = %174
  %223 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %224 = call i32 @nrerrorrecovery(%struct.FsmInst* %223)
  br label %251

225:                                              ; preds = %218
  %226 = load %struct.layer2*, %struct.layer2** %7, align 8
  %227 = getelementptr inbounds %struct.layer2, %struct.layer2* %226, i32 0, i32 4
  %228 = call i64 @skb_queue_len(i32* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %232 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @ST_L2_7, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %230
  %237 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %238 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %239 = call i32 @mISDN_FsmEvent(%struct.FsmInst* %237, i32 %238, i32* null)
  br label %240

240:                                              ; preds = %236, %230, %225
  %241 = load i32, i32* @FLG_ACK_PEND, align 4
  %242 = load %struct.layer2*, %struct.layer2** %7, align 8
  %243 = getelementptr inbounds %struct.layer2, %struct.layer2* %242, i32 0, i32 3
  %244 = call i64 @test_and_clear_bit(i32 %241, i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load %struct.layer2*, %struct.layer2** %7, align 8
  %248 = load i32, i32* @RR, align 4
  %249 = load i32, i32* @RSP, align 4
  %250 = call i32 @enquiry_cr(%struct.layer2* %247, i32 %248, i32 %249, i32 0)
  br label %251

251:                                              ; preds = %222, %246, %240
  ret void
}

declare dso_local i32 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @enquiry_response(%struct.layer2*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2headersize(%struct.layer2*, i32) #1

declare dso_local i32 @l2up(%struct.layer2*, i32, %struct.sk_buff*) #1

declare dso_local i32 @enquiry_cr(%struct.layer2*, i32, i32, i32) #1

declare dso_local i64 @legalnr(%struct.layer2*, i32) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmRestartTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @restart_t200(%struct.layer2*, i32) #1

declare dso_local i32 @setva(%struct.layer2*, i32) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.FsmInst*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
