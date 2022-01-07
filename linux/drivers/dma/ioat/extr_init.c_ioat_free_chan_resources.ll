; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_free_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_free_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.ioatdma_chan = type { i32, i32, i64, i64, i64, i32, i32, i32, i32*, %struct.TYPE_2__*, i64, i64, i64, %struct.ioatdma_device* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.ioatdma_device = type { i64, i32 }
%struct.ioat_ring_ent = type { i32 }

@IOAT_VER_3_4 = common dso_local global i64 0, align 8
@IOAT_CHAN_LTR_SWSEL_IDLE = common dso_local global i32 0, align 4
@IOAT_CHAN_LTR_SWSEL_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"freeing %d idle descriptors\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Freeing %d in use descriptors!\0A\00", align 1
@SZ_2M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @ioat_free_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioat_free_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.ioatdma_chan*, align 8
  %4 = alloca %struct.ioatdma_device*, align 8
  %5 = alloca %struct.ioat_ring_ent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan* %9)
  store %struct.ioatdma_chan* %10, %struct.ioatdma_chan** %3, align 8
  %11 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %11, i32 0, i32 13
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %12, align 8
  store %struct.ioatdma_device* %13, %struct.ioatdma_device** %4, align 8
  %14 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %15 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 1, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %19 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %187

23:                                               ; preds = %1
  %24 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %25 = call i32 @ioat_stop(%struct.ioatdma_chan* %24)
  %26 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %27 = call i32 @ioat_reset_hw(%struct.ioatdma_chan* %26)
  %28 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %29 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IOAT_VER_3_4, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load i32, i32* @IOAT_CHAN_LTR_SWSEL_IDLE, align 4
  %35 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %36 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %35, i32 0, i32 12
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IOAT_CHAN_LTR_SWSEL_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writeb(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %33, %23
  %42 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %43 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %42, i32 0, i32 5
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %45, i32 0, i32 6
  %47 = call i32 @spin_lock_bh(i32* %46)
  %48 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %49 = call i32 @ioat_ring_space(%struct.ioatdma_chan* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %51 = call i32 @to_dev(%struct.ioatdma_chan* %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %70, %41
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %60 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = call %struct.ioat_ring_ent* @ioat_get_ring_ent(%struct.ioatdma_chan* %59, i64 %65)
  store %struct.ioat_ring_ent* %66, %struct.ioat_ring_ent** %5, align 8
  %67 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %68 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %69 = call i32 @ioat_free_ring_ent(%struct.ioat_ring_ent* %67, %struct.dma_chan* %68)
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %54

73:                                               ; preds = %54
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %79 = call i32 @to_dev(%struct.ioatdma_chan* %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @dev_err(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %77, %73
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %106, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sub nsw i32 %87, %88
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %85
  %92 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %93 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %94 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %95, %97
  %99 = call %struct.ioat_ring_ent* @ioat_get_ring_ent(%struct.ioatdma_chan* %92, i64 %98)
  store %struct.ioat_ring_ent* %99, %struct.ioat_ring_ent** %5, align 8
  %100 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %101 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %102 = call i32 @dump_desc_dbg(%struct.ioatdma_chan* %100, %struct.ioat_ring_ent* %101)
  %103 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %5, align 8
  %104 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %105 = call i32 @ioat_free_ring_ent(%struct.ioat_ring_ent* %103, %struct.dma_chan* %104)
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %85

109:                                              ; preds = %85
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %151, %109
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %113 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %154

116:                                              ; preds = %110
  %117 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %118 = call i32 @to_dev(%struct.ioatdma_chan* %117)
  %119 = load i32, i32* @SZ_2M, align 4
  %120 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %121 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %120, i32 0, i32 9
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %129 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %128, i32 0, i32 9
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @dma_free_coherent(i32 %118, i32 %119, i32* %127, i64 %135)
  %137 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %138 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %137, i32 0, i32 9
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %138, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  store i32* null, i32** %143, align 8
  %144 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %145 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %144, i32 0, i32 9
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  br label %151

151:                                              ; preds = %116
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %110

154:                                              ; preds = %110
  %155 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %156 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %155, i32 0, i32 1
  store i32 0, i32* %156, align 4
  %157 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %158 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %157, i32 0, i32 8
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @kfree(i32* %159)
  %161 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %162 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %161, i32 0, i32 8
  store i32* null, i32** %162, align 8
  %163 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %164 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %163, i32 0, i32 0
  store i32 0, i32* %164, align 8
  %165 = load %struct.ioatdma_device*, %struct.ioatdma_device** %4, align 8
  %166 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %169 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %172 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @dma_pool_free(i32 %167, i32 %170, i64 %173)
  %175 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %176 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %175, i32 0, i32 6
  %177 = call i32 @spin_unlock_bh(i32* %176)
  %178 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %179 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %178, i32 0, i32 5
  %180 = call i32 @spin_unlock_bh(i32* %179)
  %181 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %182 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  %183 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %184 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %183, i32 0, i32 3
  store i64 0, i64* %184, align 8
  %185 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %3, align 8
  %186 = getelementptr inbounds %struct.ioatdma_chan, %struct.ioatdma_chan* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  br label %187

187:                                              ; preds = %154, %22
  ret void
}

declare dso_local %struct.ioatdma_chan* @to_ioat_chan(%struct.dma_chan*) #1

declare dso_local i32 @ioat_stop(%struct.ioatdma_chan*) #1

declare dso_local i32 @ioat_reset_hw(%struct.ioatdma_chan*) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ioat_ring_space(%struct.ioatdma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @to_dev(%struct.ioatdma_chan*) #1

declare dso_local %struct.ioat_ring_ent* @ioat_get_ring_ent(%struct.ioatdma_chan*, i64) #1

declare dso_local i32 @ioat_free_ring_ent(%struct.ioat_ring_ent*, %struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dump_desc_dbg(%struct.ioatdma_chan*, %struct.ioat_ring_ent*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dma_pool_free(i32, i32, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
