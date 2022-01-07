; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st8_got_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/mISDN/extr_layer2.c_l2_st8_got_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.FsmInst = type { %struct.layer2* }
%struct.layer2 = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32* }

@FLG_ORIG = common dso_local global i32 0, align 4
@FLG_MOD128 = common dso_local global i32 0, align 4
@EV_L2_T203 = common dso_local global i32 0, align 4
@ST_L2_7 = common dso_local global i32 0, align 4
@EV_L2_ACK_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.FsmInst*, i32, i8*)* @l2_st8_got_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2_st8_got_super(%struct.FsmInst* %0, i32 %1, i8* %2) #0 {
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
  %14 = getelementptr inbounds %struct.FsmInst, %struct.FsmInst* %13, i32 0, i32 0
  %15 = load %struct.layer2*, %struct.layer2** %14, align 8
  store %struct.layer2* %15, %struct.layer2** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.sk_buff*
  store %struct.sk_buff* %17, %struct.sk_buff** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 2
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @FLG_ORIG, align 4
  %24 = load %struct.layer2*, %struct.layer2** %7, align 8
  %25 = getelementptr inbounds %struct.layer2, %struct.layer2* %24, i32 0, i32 3
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load %struct.layer2*, %struct.layer2** %7, align 8
  %36 = call i32 @l2addrsize(%struct.layer2* %35)
  %37 = call i32 @skb_pull(%struct.sk_buff* %34, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.layer2*, %struct.layer2** %7, align 8
  %42 = call i64 @IsRNR(i32* %40, %struct.layer2* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %33
  %45 = load %struct.layer2*, %struct.layer2** %7, align 8
  %46 = call i32 @set_peer_busy(%struct.layer2* %45)
  store i32 1, i32* %11, align 4
  br label %50

47:                                               ; preds = %33
  %48 = load %struct.layer2*, %struct.layer2** %7, align 8
  %49 = call i32 @clear_peer_busy(%struct.layer2* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @FLG_MOD128, align 4
  %52 = load %struct.layer2*, %struct.layer2** %7, align 8
  %53 = getelementptr inbounds %struct.layer2, %struct.layer2* %52, i32 0, i32 3
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 1
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %85

71:                                               ; preds = %50
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 16
  store i32 %77, i32* %9, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 5
  %84 = and i32 %83, 7
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %71, %56
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %85
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %141

93:                                               ; preds = %90
  %94 = load %struct.layer2*, %struct.layer2** %7, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i64 @legalnr(%struct.layer2* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %93
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.layer2*, %struct.layer2** %7, align 8
  %103 = call i32 @restart_t200(%struct.layer2* %102, i32 15)
  br label %117

104:                                              ; preds = %98
  %105 = load %struct.layer2*, %struct.layer2** %7, align 8
  %106 = call i32 @stop_t200(%struct.layer2* %105, i32 16)
  %107 = load %struct.layer2*, %struct.layer2** %7, align 8
  %108 = getelementptr inbounds %struct.layer2, %struct.layer2* %107, i32 0, i32 2
  %109 = load %struct.layer2*, %struct.layer2** %7, align 8
  %110 = getelementptr inbounds %struct.layer2, %struct.layer2* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @EV_L2_T203, align 4
  %113 = call i32 @mISDN_FsmAddTimer(i32* %108, i32 %111, i32 %112, i32* null, i32 5)
  %114 = load %struct.layer2*, %struct.layer2** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @setva(%struct.layer2* %114, i32 %115)
  br label %117

117:                                              ; preds = %104, %101
  %118 = load %struct.layer2*, %struct.layer2** %7, align 8
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @invoke_retransmission(%struct.layer2* %118, i32 %119)
  %121 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %122 = load i32, i32* @ST_L2_7, align 4
  %123 = call i32 @mISDN_FsmChangeState(%struct.FsmInst* %121, i32 %122)
  %124 = load %struct.layer2*, %struct.layer2** %7, align 8
  %125 = getelementptr inbounds %struct.layer2, %struct.layer2* %124, i32 0, i32 0
  %126 = call i64 @skb_queue_len(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %117
  %129 = load %struct.layer2*, %struct.layer2** %7, align 8
  %130 = call i64 @cansend(%struct.layer2* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %134 = load i32, i32* @EV_L2_ACK_PULL, align 4
  %135 = call i32 @mISDN_FsmEvent(%struct.FsmInst* %133, i32 %134, i32* null)
  br label %136

136:                                              ; preds = %132, %128, %117
  br label %140

137:                                              ; preds = %93
  %138 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %139 = call i32 @nrerrorrecovery(%struct.FsmInst* %138)
  br label %140

140:                                              ; preds = %137, %136
  br label %163

141:                                              ; preds = %90, %85
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.layer2*, %struct.layer2** %7, align 8
  %149 = call i32 @enquiry_response(%struct.layer2* %148)
  br label %150

150:                                              ; preds = %147, %144, %141
  %151 = load %struct.layer2*, %struct.layer2** %7, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i64 @legalnr(%struct.layer2* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.layer2*, %struct.layer2** %7, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @setva(%struct.layer2* %156, i32 %157)
  br label %162

159:                                              ; preds = %150
  %160 = load %struct.FsmInst*, %struct.FsmInst** %4, align 8
  %161 = call i32 @nrerrorrecovery(%struct.FsmInst* %160)
  br label %162

162:                                              ; preds = %159, %155
  br label %163

163:                                              ; preds = %162, %140
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2addrsize(%struct.layer2*) #1

declare dso_local i64 @IsRNR(i32*, %struct.layer2*) #1

declare dso_local i32 @set_peer_busy(%struct.layer2*) #1

declare dso_local i32 @clear_peer_busy(%struct.layer2*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @legalnr(%struct.layer2*, i32) #1

declare dso_local i32 @restart_t200(%struct.layer2*, i32) #1

declare dso_local i32 @stop_t200(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmAddTimer(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @setva(%struct.layer2*, i32) #1

declare dso_local i32 @invoke_retransmission(%struct.layer2*, i32) #1

declare dso_local i32 @mISDN_FsmChangeState(%struct.FsmInst*, i32) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i64 @cansend(%struct.layer2*) #1

declare dso_local i32 @mISDN_FsmEvent(%struct.FsmInst*, i32, i32*) #1

declare dso_local i32 @nrerrorrecovery(%struct.FsmInst*) #1

declare dso_local i32 @enquiry_response(%struct.layer2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
