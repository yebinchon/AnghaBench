; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_empty_fifo_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_hfcpci_empty_fifo_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i32, i32 }
%struct.bzfifo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_B_FRAMES = common dso_local global i64 0, align 8
@B_FIFO_SIZE = common dso_local global i32 0, align 4
@B_SUB_VAL = common dso_local global i32 0, align 4
@FLG_RX_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"B%d: No bufferspace for %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bchannel*, %struct.bzfifo*, %struct.bzfifo*, i32*)* @hfcpci_empty_fifo_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfcpci_empty_fifo_trans(%struct.bchannel* %0, %struct.bzfifo* %1, %struct.bzfifo* %2, i32* %3) #0 {
  %5 = alloca %struct.bchannel*, align 8
  %6 = alloca %struct.bzfifo*, align 8
  %7 = alloca %struct.bzfifo*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.bchannel* %0, %struct.bchannel** %5, align 8
  store %struct.bzfifo* %1, %struct.bzfifo** %6, align 8
  store %struct.bzfifo* %2, %struct.bzfifo** %7, align 8
  store i32* %3, i32** %8, align 8
  %19 = load %struct.bzfifo*, %struct.bzfifo** %6, align 8
  %20 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* @MAX_B_FRAMES, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32* %26, i32** %10, align 8
  %27 = load %struct.bzfifo*, %struct.bzfifo** %7, align 8
  %28 = getelementptr inbounds %struct.bzfifo, %struct.bzfifo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i64, i64* @MAX_B_FRAMES, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32* %32, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = sub nsw i32 %37, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %4
  br label %172

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  %47 = icmp sle i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @B_FIFO_SIZE, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @B_FIFO_SIZE, align 4
  %60 = load i32, i32* @B_SUB_VAL, align 4
  %61 = add nsw i32 %59, %60
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load i32, i32* @B_FIFO_SIZE, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load i32*, i32** %11, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @B_FIFO_SIZE, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %77, %67
  %82 = load i32, i32* @B_FIFO_SIZE, align 4
  %83 = load i32, i32* %15, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %15, align 4
  %85 = load i32, i32* @FLG_RX_OFF, align 4
  %86 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %87 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %86, i32 0, i32 3
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %93 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @cpu_to_le16(i32 %96)
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  br label %172

99:                                               ; preds = %81
  %100 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @bchannel_get_rxbuf(%struct.bchannel* %100, i32 %101)
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %107 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = call i32 @pr_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %109)
  br label %168

111:                                              ; preds = %99
  %112 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %113 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32* @skb_put(i32 %114, i32 %115)
  store i32* %116, i32** %17, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le16_to_cpu(i32 %118)
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @B_FIFO_SIZE, align 4
  %123 = load i32, i32* @B_SUB_VAL, align 4
  %124 = add nsw i32 %122, %123
  %125 = icmp sle i32 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %111
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %16, align 4
  br label %136

128:                                              ; preds = %111
  %129 = load i32, i32* @B_FIFO_SIZE, align 4
  %130 = load i32, i32* @B_SUB_VAL, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %128, %126
  %137 = load i32*, i32** %8, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le16_to_cpu(i32 %139)
  %141 = load i32, i32* @B_SUB_VAL, align 4
  %142 = sub nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  store i32* %144, i32** %18, align 8
  %145 = load i32*, i32** %17, align 8
  %146 = load i32*, i32** %18, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @memcpy(i32* %145, i32* %146, i32 %147)
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %14, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %136
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %17, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %17, align 8
  %159 = load i32*, i32** %8, align 8
  store i32* %159, i32** %18, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i32*, i32** %18, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @memcpy(i32* %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %154, %136
  %165 = load %struct.bchannel*, %struct.bchannel** %5, align 8
  %166 = load i32, i32* %15, align 4
  %167 = call i32 @recv_Bchannel(%struct.bchannel* %165, i32 %166, i32 0)
  br label %168

168:                                              ; preds = %164, %105
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @cpu_to_le16(i32 %169)
  %171 = load i32*, i32** %10, align 8
  store i32 %170, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %90, %44
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @bchannel_get_rxbuf(%struct.bchannel*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

declare dso_local i32* @skb_put(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @recv_Bchannel(%struct.bchannel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
