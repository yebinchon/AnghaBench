; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32, i64, %struct.TYPE_2__*, i32, i32, i32, i64, i64, i64, %struct.ioat_ring_ent**, i64, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ioat_ring_ent = type { i32 }

@IOAT_CHANCTRL_RUN = common dso_local global i32 0, align 4
@IOAT_CHANCTRL_OFFSET = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IOAT_CHANCMP_OFFSET_LOW = common dso_local global i64 0, align 8
@IOAT_CHANCMP_OFFSET_HIGH = common dso_local global i64 0, align 8
@IOAT_MAX_ORDER = common dso_local global i32 0, align 4
@IOAT_RUN = common dso_local global i32 0, align 4
@IOAT_VER_3_4 = common dso_local global i64 0, align 8
@IOAT_CHAN_LTR_ACTIVE_SNVAL = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_ACTIVE_SNLATSCALE = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_ACTIVE_SNREQMNT = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_ACTIVE_OFFSET = common dso_local global i64 0, align 8
@IOAT_CHAN_LTR_IDLE_SNVAL = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_IDLE_SNLATSCALE = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_IDLE_SNREQMNT = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_IDLE_OFFSET = common dso_local global i64 0, align 8
@IOAT_CHAN_LTR_SWSEL_ACTIVE = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_SWSEL_OFFSET = common dso_local global i64 0, align 8
@IOAT_CHANERR_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"failed to start channel chanerr: %#x\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @ioat_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioat_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.ioatdma_chan*, align 8
  %5 = alloca %struct.ioat_ring_ent**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %11)
  store %struct.ioatdma_chan* %12, %struct.ioatdma_chan** %4, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %14 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %13, i32 0, i32 9
  %15 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %14, align 8
  %16 = icmp ne %struct.ioat_ring_ent** %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  store i32 %21, i32* %2, align 4
  br label %198

22:                                               ; preds = %1
  %23 = load i32, i32* @IOAT_CHANCTRL_RUN, align 4
  %24 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %25 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IOAT_CHANCTRL_OFFSET, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writew(i32 %23, i64 %28)
  %30 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %31 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_NOWAIT, align 4
  %36 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %37 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %36, i32 0, i32 10
  %38 = call i32 @dma_pool_zalloc(i32 %34, i32 %35, i64* %37)
  %39 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %40 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %42 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %22
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %198

48:                                               ; preds = %22
  %49 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %50 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IOAT_CHANCMP_OFFSET_LOW, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %60 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %59, i32 0, i32 10
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = ashr i32 %62, 32
  %64 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %65 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IOAT_CHANCMP_OFFSET_HIGH, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* @IOAT_MAX_ORDER, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @GFP_NOWAIT, align 4
  %74 = call %struct.ioat_ring_ent** @ioat_alloc_ring(%struct.dma_chan* %71, i32 %72, i32 %73)
  store %struct.ioat_ring_ent** %74, %struct.ioat_ring_ent*** %5, align 8
  %75 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %5, align 8
  %76 = icmp ne %struct.ioat_ring_ent** %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %48
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %198

80:                                               ; preds = %48
  %81 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %82 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %81, i32 0, i32 3
  %83 = call i32 @spin_lock_bh(i32* %82)
  %84 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %85 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %84, i32 0, i32 4
  %86 = call i32 @spin_lock_bh(i32* %85)
  %87 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %5, align 8
  %88 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %89 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %88, i32 0, i32 9
  store %struct.ioat_ring_ent** %87, %struct.ioat_ring_ent*** %89, align 8
  %90 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %91 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %93 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %92, i32 0, i32 7
  store i64 0, i64* %93, align 8
  %94 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %95 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %98 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @IOAT_RUN, align 4
  %100 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %101 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %100, i32 0, i32 5
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  %103 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %104 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %103, i32 0, i32 4
  %105 = call i32 @spin_unlock_bh(i32* %104)
  %106 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %107 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %106, i32 0, i32 3
  %108 = call i32 @spin_unlock_bh(i32* %107)
  %109 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %110 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @IOAT_VER_3_4, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %148

116:                                              ; preds = %80
  %117 = load i32, i32* @IOAT_CHAN_LTR_ACTIVE_SNVAL, align 4
  %118 = load i32, i32* @IOAT_CHAN_LTR_ACTIVE_SNLATSCALE, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @IOAT_CHAN_LTR_ACTIVE_SNREQMNT, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %124 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @IOAT_CHAN_LTR_ACTIVE_OFFSET, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @writel(i32 %122, i64 %127)
  %129 = load i32, i32* @IOAT_CHAN_LTR_IDLE_SNVAL, align 4
  %130 = load i32, i32* @IOAT_CHAN_LTR_IDLE_SNLATSCALE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @IOAT_CHAN_LTR_IDLE_SNREQMNT, align 4
  %133 = or i32 %131, %132
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %136 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @IOAT_CHAN_LTR_IDLE_OFFSET, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  %141 = load i32, i32* @IOAT_CHAN_LTR_SWSEL_ACTIVE, align 4
  %142 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %143 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IOAT_CHAN_LTR_SWSEL_OFFSET, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @writeb(i32 %141, i64 %146)
  br label %148

148:                                              ; preds = %116, %80
  %149 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %150 = call i32 @ioat_start_null_desc(%struct.ioatdma_chan* %149)
  br label %151

151:                                              ; preds = %168, %148
  %152 = call i32 @udelay(i32 1)
  %153 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %154 = call i32 @ioat_chansts(%struct.ioatdma_chan* %153)
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = icmp slt i32 %156, 20
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i32, i32* %6, align 4
  %161 = call i64 @is_ioat_active(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %6, align 4
  %165 = call i64 @is_ioat_idle(i32 %164)
  %166 = icmp ne i64 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %163, %159, %155
  %169 = phi i1 [ false, %159 ], [ false, %155 ], [ %167, %163 ]
  br i1 %169, label %151, label %170

170:                                              ; preds = %168
  %171 = load i32, i32* %6, align 4
  %172 = call i64 @is_ioat_active(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = call i64 @is_ioat_idle(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %174, %170
  %179 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %180 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = shl i32 1, %181
  store i32 %182, i32* %2, align 4
  br label %198

183:                                              ; preds = %174
  %184 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %185 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IOAT_CHANERR_OFFSET, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @readl(i64 %188)
  store i32 %189, i32* %9, align 4
  %190 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %191 = call i32 @to_dev(%struct.ioatdma_chan* %190)
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @dev_WARN(i32 %191, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %195 = call i32 @ioat_free_chan_resources(%struct.dma_chan* %194)
  %196 = load i32, i32* @EFAULT, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %183, %178, %77, %45, %17
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @dma_pool_zalloc(i32, i32, i64*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local %struct.ioat_ring_ent** @ioat_alloc_ring(%struct.dma_chan*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @ioat_start_null_desc(%struct.ioatdma_chan*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ioat_chansts(%struct.ioatdma_chan*) #1

declare dso_local i64 @is_ioat_active(i32) #1

declare dso_local i64 @is_ioat_idle(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_WARN(i32, i8*, i32) #1

declare dso_local i32 @to_dev(%struct.ioatdma_chan*) #1

declare dso_local i32 @ioat_free_chan_resources(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
