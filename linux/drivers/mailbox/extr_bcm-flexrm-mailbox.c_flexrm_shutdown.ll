; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbox_chan = type { %struct.flexrm_ring* }
%struct.flexrm_ring = type { i32, i32*, i32, %struct.TYPE_2__*, i32*, i32, i32, i32, %struct.brcm_message**, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.brcm_message = type { i32 }

@RING_CONTROL = common dso_local global i64 0, align 8
@CONTROL_FLUSH_SHIFT = common dso_local global i32 0, align 4
@RING_FLUSH_DONE = common dso_local global i64 0, align 8
@FLUSH_DONE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"setting ring%d flush state timedout\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"clearing ring%d flush state timedout\0A\00", align 1
@RING_MAX_REQ_COUNT = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbox_chan*)* @flexrm_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexrm_shutdown(%struct.mbox_chan* %0) #0 {
  %2 = alloca %struct.mbox_chan*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcm_message*, align 8
  %6 = alloca %struct.flexrm_ring*, align 8
  store %struct.mbox_chan* %0, %struct.mbox_chan** %2, align 8
  %7 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %8 = getelementptr inbounds %struct.mbox_chan, %struct.mbox_chan* %7, i32 0, i32 0
  %9 = load %struct.flexrm_ring*, %struct.flexrm_ring** %8, align 8
  store %struct.flexrm_ring* %9, %struct.flexrm_ring** %6, align 8
  %10 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %11 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %10, i32 0, i32 10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RING_CONTROL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 0, i64 %14)
  store i32 1000, i32* %4, align 4
  %16 = load i32, i32* @CONTROL_FLUSH_SHIFT, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %19 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %18, i32 0, i32 10
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @RING_CONTROL, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel_relaxed(i32 %17, i64 %22)
  br label %24

24:                                               ; preds = %37, %1
  %25 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %26 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RING_FLUSH_DONE, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl_relaxed(i64 %29)
  %31 = load i32, i32* @FLUSH_DONE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %41

35:                                               ; preds = %24
  %36 = call i32 @mdelay(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %24, label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %46 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %51 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %44, %41
  store i32 1000, i32* %4, align 4
  %55 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %56 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %55, i32 0, i32 10
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RING_CONTROL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel_relaxed(i32 0, i64 %59)
  br label %61

61:                                               ; preds = %74, %54
  %62 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %63 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %62, i32 0, i32 10
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @RING_FLUSH_DONE, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @readl_relaxed(i64 %66)
  %68 = load i32, i32* @FLUSH_DONE_MASK, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %78

72:                                               ; preds = %61
  %73 = call i32 @mdelay(i32 1)
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %4, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %61, label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %83 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %88 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %81, %78
  store i64 0, i64* %3, align 8
  br label %92

92:                                               ; preds = %126, %91
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* @RING_MAX_REQ_COUNT, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %92
  %97 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %98 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %97, i32 0, i32 8
  %99 = load %struct.brcm_message**, %struct.brcm_message*** %98, align 8
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %99, i64 %100
  %102 = load %struct.brcm_message*, %struct.brcm_message** %101, align 8
  store %struct.brcm_message* %102, %struct.brcm_message** %5, align 8
  %103 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %104 = icmp ne %struct.brcm_message* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %96
  br label %126

106:                                              ; preds = %96
  %107 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %108 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %107, i32 0, i32 8
  %109 = load %struct.brcm_message**, %struct.brcm_message*** %108, align 8
  %110 = load i64, i64* %3, align 8
  %111 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %109, i64 %110
  store %struct.brcm_message* null, %struct.brcm_message** %111, align 8
  %112 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %113 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %112, i32 0, i32 3
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %118 = call i32 @flexrm_dma_unmap(i32 %116, %struct.brcm_message* %117)
  %119 = load i32, i32* @EIO, align 4
  %120 = sub nsw i32 0, %119
  %121 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %122 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.mbox_chan*, %struct.mbox_chan** %2, align 8
  %124 = load %struct.brcm_message*, %struct.brcm_message** %5, align 8
  %125 = call i32 @mbox_chan_received_data(%struct.mbox_chan* %123, %struct.brcm_message* %124)
  br label %126

126:                                              ; preds = %106, %105
  %127 = load i64, i64* %3, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %3, align 8
  br label %92

129:                                              ; preds = %92
  %130 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %131 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* @RING_MAX_REQ_COUNT, align 8
  %134 = call i32 @bitmap_zero(i32 %132, i64 %133)
  %135 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %136 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

139:                                              ; preds = %129
  %140 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %141 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @irq_set_affinity_hint(i32 %142, i32* null)
  %144 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %145 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %148 = call i32 @free_irq(i32 %146, %struct.flexrm_ring* %147)
  %149 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %150 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %149, i32 0, i32 0
  store i32 0, i32* %150, align 8
  br label %151

151:                                              ; preds = %139, %129
  %152 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %153 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %152, i32 0, i32 4
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %171

156:                                              ; preds = %151
  %157 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %158 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %157, i32 0, i32 3
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %163 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %166 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dma_pool_free(i32 %161, i32* %164, i32 %167)
  %169 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %170 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %169, i32 0, i32 4
  store i32* null, i32** %170, align 8
  br label %171

171:                                              ; preds = %156, %151
  %172 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %173 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %191

176:                                              ; preds = %171
  %177 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %178 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %177, i32 0, i32 3
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %183 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %186 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @dma_pool_free(i32 %181, i32* %184, i32 %187)
  %189 = load %struct.flexrm_ring*, %struct.flexrm_ring** %6, align 8
  %190 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %189, i32 0, i32 1
  store i32* null, i32** %190, align 8
  br label %191

191:                                              ; preds = %176, %171
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @flexrm_dma_unmap(i32, %struct.brcm_message*) #1

declare dso_local i32 @mbox_chan_received_data(%struct.mbox_chan*, %struct.brcm_message*) #1

declare dso_local i32 @bitmap_zero(i32, i64) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.flexrm_ring*) #1

declare dso_local i32 @dma_pool_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
