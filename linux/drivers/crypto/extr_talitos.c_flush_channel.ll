; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_flush_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_flush_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.talitos_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.talitos_request* }
%struct.talitos_request = type { i32, i32*, i32 (%struct.device.0*, i32*, i32, i32)*, i32 }
%struct.device.0 = type opaque

@DESC_HDR_DONE = common dso_local global i32 0, align 4
@TALITOS_DESC_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, i32, i32, i32)* @flush_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_channel(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.talitos_private*, align 8
  %10 = alloca %struct.talitos_request*, align 8
  %11 = alloca %struct.talitos_request, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %17)
  store %struct.talitos_private* %18, %struct.talitos_private** %9, align 8
  %19 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %20 = call i32 @has_ftr_sec1(%struct.talitos_private* %19)
  store i32 %20, i32* %15, align 4
  %21 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %22 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %31 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %156, %4
  %39 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %40 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load %struct.talitos_request*, %struct.talitos_request** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %46, i64 %48
  %50 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %174

53:                                               ; preds = %38
  %54 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %55 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load %struct.talitos_request*, %struct.talitos_request** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %61, i64 %63
  store %struct.talitos_request* %64, %struct.talitos_request** %10, align 8
  %65 = call i32 (...) @rmb()
  %66 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @get_request_hdr(%struct.talitos_request* %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @DESC_HDR_DONE, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @DESC_HDR_DONE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %82

75:                                               ; preds = %53
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br label %174

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81, %74
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %85 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @TALITOS_DESC_SIZE, align 4
  %88 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %89 = call i32 @dma_unmap_single(%struct.device* %83, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %91 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 1
  store i32* %92, i32** %93, align 8
  %94 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %95 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %94, i32 0, i32 2
  %96 = load i32 (%struct.device.0*, i32*, i32, i32)*, i32 (%struct.device.0*, i32*, i32, i32)** %95, align 8
  %97 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 2
  store i32 (%struct.device.0*, i32*, i32, i32)* %96, i32 (%struct.device.0*, i32*, i32, i32)** %97, align 8
  %98 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %99 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  %102 = call i32 (...) @smp_wmb()
  %103 = load %struct.talitos_request*, %struct.talitos_request** %10, align 8
  %104 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %108 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sub nsw i32 %109, 1
  %111 = and i32 %106, %110
  %112 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %113 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i32 %111, i32* %118, align 8
  %119 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %120 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %129 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %128, i32 0, i32 1
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = call i32 @atomic_dec(i32* %134)
  %136 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 2
  %137 = load i32 (%struct.device.0*, i32*, i32, i32)*, i32 (%struct.device.0*, i32*, i32, i32)** %136, align 8
  %138 = load %struct.device*, %struct.device** %5, align 8
  %139 = bitcast %struct.device* %138 to %struct.device.0*
  %140 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds %struct.talitos_request, %struct.talitos_request* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 %137(%struct.device.0* %139, i32* %141, i32 %143, i32 %144)
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %82
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %184

156:                                              ; preds = %151, %148, %82
  %157 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %158 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %157, i32 0, i32 1
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i64, i64* %12, align 8
  %165 = call i32 @spin_lock_irqsave(i32* %163, i64 %164)
  %166 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %167 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %13, align 4
  br label %38

174:                                              ; preds = %78, %38
  %175 = load %struct.talitos_private*, %struct.talitos_private** %9, align 8
  %176 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %175, i32 0, i32 1
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i64, i64* %12, align 8
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i64 %182)
  br label %184

184:                                              ; preds = %174, %155
  ret void
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @get_request_hdr(%struct.talitos_request*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
