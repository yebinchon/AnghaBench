; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_new_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-flexrm-mailbox.c_flexrm_new_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexrm_ring = type { i32, i8*, i32, i32, %struct.brcm_message**, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.brcm_message = type { i32 }

@EIO = common dso_local global i32 0, align 4
@RING_MAX_REQ_COUNT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@RING_BD_READ_PTR = common dso_local global i64 0, align 8
@RING_BD_START_ADDR = common dso_local global i64 0, align 8
@RING_DESC_SIZE = common dso_local global i32 0, align 4
@RING_BD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexrm_ring*, %struct.brcm_message*, %struct.brcm_message*)* @flexrm_new_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexrm_new_request(%struct.flexrm_ring* %0, %struct.brcm_message* %1, %struct.brcm_message* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.flexrm_ring*, align 8
  %6 = alloca %struct.brcm_message*, align 8
  %7 = alloca %struct.brcm_message*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.flexrm_ring* %0, %struct.flexrm_ring** %5, align 8
  store %struct.brcm_message* %1, %struct.brcm_message** %6, align 8
  store %struct.brcm_message* %2, %struct.brcm_message** %7, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %19 = call i32 @flexrm_sanity_check(%struct.brcm_message* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %235

24:                                               ; preds = %3
  %25 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %26 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %25, i32 0, i32 0
  store i32 0, i32* %26, align 4
  %27 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %28 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %27, i32 0, i32 2
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %32 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RING_MAX_REQ_COUNT, align 4
  %35 = call i32 @bitmap_find_free_region(i32 %33, i32 %34, i32 0)
  store i32 %35, i32* %17, align 4
  %36 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %37 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %36, i32 0, i32 2
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %24
  %43 = load i32, i32* @ENOSPC, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %235

45:                                               ; preds = %24
  %46 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %47 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %48 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %47, i32 0, i32 4
  %49 = load %struct.brcm_message**, %struct.brcm_message*** %48, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %49, i64 %51
  store %struct.brcm_message* %46, %struct.brcm_message** %52, align 8
  %53 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %54 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %59 = call i32 @flexrm_dma_map(i32 %57, %struct.brcm_message* %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %45
  %63 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %64 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %63, i32 0, i32 4
  %65 = load %struct.brcm_message**, %struct.brcm_message*** %64, align 8
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %65, i64 %67
  store %struct.brcm_message* null, %struct.brcm_message** %68, align 8
  %69 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %70 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %69, i32 0, i32 2
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %74 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @bitmap_release_region(i32 %75, i32 %76, i32 0)
  %78 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %79 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %78, i32 0, i32 2
  %80 = load i64, i64* %9, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %4, align 4
  br label %235

83:                                               ; preds = %45
  %84 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %85 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RING_BD_READ_PTR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl_relaxed(i64 %88)
  store i32 %89, i32* %13, align 4
  %90 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %91 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %90, i32 0, i32 8
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @RING_BD_START_ADDR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @readl_relaxed(i64 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @RING_DESC_SIZE, align 4
  %97 = load i32, i32* %13, align 4
  %98 = mul nsw i32 %97, %96
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i64 @BD_START_ADDR_DECODE(i32 %99)
  %101 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %102 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = sub nsw i64 %100, %103
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %13, align 4
  %108 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %109 = call i32 @flexrm_estimate_nonheader_desc_count(%struct.brcm_message* %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @flexrm_estimate_header_desc_count(i32 %110)
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %111, %112
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %116 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %146, %83
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %147

121:                                              ; preds = %118
  %122 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %123 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr i8, i8* %124, i64 %126
  %128 = call i32 @flexrm_is_next_table_desc(i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %130, %121
  %134 = load i32, i32* @RING_DESC_SIZE, align 4
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, %134
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @RING_BD_SIZE, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %140, %133
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %147

146:                                              ; preds = %141
  br label %118

147:                                              ; preds = %145, %118
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @ENOSPC, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %200

153:                                              ; preds = %147
  %154 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %158 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %161 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr i8, i8* %159, i64 %163
  %165 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %166 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = call i32 @RING_BD_TOGGLE_VALID(i64 %168)
  %170 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %171 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %174 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* @RING_BD_SIZE, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr i8, i8* %175, i64 %177
  %179 = call i8* @flexrm_write_descs(%struct.brcm_message* %154, i32 %155, i32 %156, i8* %164, i32 %169, i8* %172, i8* %178)
  store i8* %179, i8** %8, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call i64 @IS_ERR(i8* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %153
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @PTR_ERR(i8* %184)
  store i32 %185, i32* %16, align 4
  store i32 1, i32* %15, align 4
  br label %200

186:                                              ; preds = %153
  %187 = load i8*, i8** %8, align 8
  %188 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %189 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = ptrtoint i8* %187 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %196 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %198 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %197, i32 0, i32 6
  %199 = call i32 @atomic_inc_return(i32* %198)
  br label %200

200:                                              ; preds = %186, %183, %150
  %201 = load i32, i32* %16, align 4
  %202 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %203 = getelementptr inbounds %struct.brcm_message, %struct.brcm_message* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %233

206:                                              ; preds = %200
  %207 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %208 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %207, i32 0, i32 5
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.brcm_message*, %struct.brcm_message** %7, align 8
  %213 = call i32 @flexrm_dma_unmap(i32 %211, %struct.brcm_message* %212)
  %214 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %215 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %214, i32 0, i32 4
  %216 = load %struct.brcm_message**, %struct.brcm_message*** %215, align 8
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.brcm_message*, %struct.brcm_message** %216, i64 %218
  store %struct.brcm_message* null, %struct.brcm_message** %219, align 8
  %220 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %221 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %220, i32 0, i32 2
  %222 = load i64, i64* %9, align 8
  %223 = call i32 @spin_lock_irqsave(i32* %221, i64 %222)
  %224 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %225 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @bitmap_release_region(i32 %226, i32 %227, i32 0)
  %229 = load %struct.flexrm_ring*, %struct.flexrm_ring** %5, align 8
  %230 = getelementptr inbounds %struct.flexrm_ring, %struct.flexrm_ring* %229, i32 0, i32 2
  %231 = load i64, i64* %9, align 8
  %232 = call i32 @spin_unlock_irqrestore(i32* %230, i64 %231)
  br label %233

233:                                              ; preds = %206, %200
  %234 = load i32, i32* %16, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %62, %42, %21
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @flexrm_sanity_check(%struct.brcm_message*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @flexrm_dma_map(i32, %struct.brcm_message*) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @BD_START_ADDR_DECODE(i32) #1

declare dso_local i32 @flexrm_estimate_nonheader_desc_count(%struct.brcm_message*) #1

declare dso_local i32 @flexrm_estimate_header_desc_count(i32) #1

declare dso_local i32 @flexrm_is_next_table_desc(i8*) #1

declare dso_local i8* @flexrm_write_descs(%struct.brcm_message*, i32, i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @RING_BD_TOGGLE_VALID(i64) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @flexrm_dma_unmap(i32, %struct.brcm_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
