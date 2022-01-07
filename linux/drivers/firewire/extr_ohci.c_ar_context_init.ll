; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_ar_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar_context = type { i64, %struct.descriptor*, i32, %struct.page**, i32, %struct.fw_ohci*, i32 }
%struct.descriptor = type { i8*, i8*, i8*, i8* }
%struct.page = type { i32 }
%struct.fw_ohci = type { i64, %struct.descriptor*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR_BUFFERS = common dso_local global i32 0, align 4
@AR_WRAPAROUND_PAGES = common dso_local global i32 0, align 4
@ar_context_tasklet = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@VM_MAP = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@DESCRIPTOR_INPUT_MORE = common dso_local global i32 0, align 4
@DESCRIPTOR_STATUS = common dso_local global i32 0, align 4
@DESCRIPTOR_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar_context*, %struct.fw_ohci*, i32, i32)* @ar_context_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar_context_init(%struct.ar_context* %0, %struct.fw_ohci* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar_context*, align 8
  %7 = alloca %struct.fw_ohci*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.descriptor*, align 8
  %15 = alloca i32, align 4
  store %struct.ar_context* %0, %struct.ar_context** %6, align 8
  store %struct.fw_ohci* %1, %struct.fw_ohci** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @AR_BUFFERS, align 4
  %17 = load i32, i32* @AR_WRAPAROUND_PAGES, align 4
  %18 = add nsw i32 %16, %17
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca %struct.page*, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %24 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %26 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %27 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %26, i32 0, i32 5
  store %struct.fw_ohci* %25, %struct.fw_ohci** %27, align 8
  %28 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %29 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %28, i32 0, i32 4
  %30 = load i32, i32* @ar_context_tasklet, align 4
  %31 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %32 = ptrtoint %struct.ar_context* %31 to i64
  %33 = call i32 @tasklet_init(i32* %29, i32 %30, i64 %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %105, %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @AR_BUFFERS, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %108

38:                                               ; preds = %34
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load i32, i32* @GFP_DMA32, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.page* @alloc_page(i32 %41)
  %43 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %44 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %43, i32 0, i32 3
  %45 = load %struct.page**, %struct.page*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.page*, %struct.page** %45, i64 %47
  store %struct.page* %42, %struct.page** %48, align 8
  %49 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %50 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %49, i32 0, i32 3
  %51 = load %struct.page**, %struct.page*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.page*, %struct.page** %51, i64 %53
  %55 = load %struct.page*, %struct.page** %54, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %38
  br label %221

58:                                               ; preds = %38
  %59 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %60 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %64 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %63, i32 0, i32 3
  %65 = load %struct.page**, %struct.page*** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.page*, %struct.page** %65, i64 %67
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %72 = call i32 @dma_map_page(i32 %62, %struct.page* %69, i32 0, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %74 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i64 @dma_mapping_error(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %58
  %81 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %82 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %81, i32 0, i32 3
  %83 = load %struct.page**, %struct.page*** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.page*, %struct.page** %83, i64 %85
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = call i32 @__free_page(%struct.page* %87)
  %89 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %90 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %89, i32 0, i32 3
  %91 = load %struct.page**, %struct.page*** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.page*, %struct.page** %91, i64 %93
  store %struct.page* null, %struct.page** %94, align 8
  br label %221

95:                                               ; preds = %58
  %96 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %97 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %96, i32 0, i32 3
  %98 = load %struct.page**, %struct.page*** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.page*, %struct.page** %98, i64 %100
  %102 = load %struct.page*, %struct.page** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @set_page_private(%struct.page* %102, i32 %103)
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %34

108:                                              ; preds = %34
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @AR_BUFFERS, align 4
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %115 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %114, i32 0, i32 3
  %116 = load %struct.page**, %struct.page*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  %120 = load %struct.page*, %struct.page** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %122
  store %struct.page* %120, %struct.page** %123, align 8
  br label %124

124:                                              ; preds = %113
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %109

127:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %145, %127
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @AR_WRAPAROUND_PAGES, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %148

132:                                              ; preds = %128
  %133 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %134 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %133, i32 0, i32 3
  %135 = load %struct.page**, %struct.page*** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds %struct.page*, %struct.page** %135, i64 %137
  %139 = load %struct.page*, %struct.page** %138, align 8
  %140 = load i32, i32* @AR_BUFFERS, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add i32 %140, %141
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.page*, %struct.page** %21, i64 %143
  store %struct.page* %139, %struct.page** %144, align 8
  br label %145

145:                                              ; preds = %132
  %146 = load i32, i32* %10, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %128

148:                                              ; preds = %128
  %149 = call i32 @ARRAY_SIZE(%struct.page** %21)
  %150 = load i32, i32* @VM_MAP, align 4
  %151 = load i32, i32* @PAGE_KERNEL, align 4
  %152 = call i32 @vmap(%struct.page** %21, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %154 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 8
  %155 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %156 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %148
  br label %221

160:                                              ; preds = %148
  %161 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %162 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %161, i32 0, i32 1
  %163 = load %struct.descriptor*, %struct.descriptor** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %163, i64 %165
  %167 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %168 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %167, i32 0, i32 1
  store %struct.descriptor* %166, %struct.descriptor** %168, align 8
  %169 = load %struct.fw_ohci*, %struct.fw_ohci** %7, align 8
  %170 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = zext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %176 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %217, %160
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* @AR_BUFFERS, align 4
  %180 = icmp ult i32 %178, %179
  br i1 %180, label %181, label %220

181:                                              ; preds = %177
  %182 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %183 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %182, i32 0, i32 1
  %184 = load %struct.descriptor*, %struct.descriptor** %183, align 8
  %185 = load i32, i32* %10, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %184, i64 %186
  store %struct.descriptor* %187, %struct.descriptor** %14, align 8
  %188 = load i32, i32* @PAGE_SIZE, align 4
  %189 = call i8* @cpu_to_le16(i32 %188)
  %190 = load %struct.descriptor*, %struct.descriptor** %14, align 8
  %191 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* @DESCRIPTOR_INPUT_MORE, align 4
  %193 = load i32, i32* @DESCRIPTOR_STATUS, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %196 = or i32 %194, %195
  %197 = call i8* @cpu_to_le16(i32 %196)
  %198 = load %struct.descriptor*, %struct.descriptor** %14, align 8
  %199 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i64 @ar_buffer_bus(%struct.ar_context* %200, i32 %201)
  %203 = call i8* @cpu_to_le32(i64 %202)
  %204 = load %struct.descriptor*, %struct.descriptor** %14, align 8
  %205 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %204, i32 0, i32 1
  store i8* %203, i8** %205, align 8
  %206 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %207 = getelementptr inbounds %struct.ar_context, %struct.ar_context* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = call i32 @ar_next_buffer_index(i32 %209)
  %211 = sext i32 %210 to i64
  %212 = mul i64 %211, 32
  %213 = add i64 %208, %212
  %214 = call i8* @cpu_to_le32(i64 %213)
  %215 = load %struct.descriptor*, %struct.descriptor** %14, align 8
  %216 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %215, i32 0, i32 0
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %181
  %218 = load i32, i32* %10, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %177

220:                                              ; preds = %177
  store i32 0, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %226

221:                                              ; preds = %159, %80, %57
  %222 = load %struct.ar_context*, %struct.ar_context** %6, align 8
  %223 = call i32 @ar_context_release(%struct.ar_context* %222)
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %226

226:                                              ; preds = %221, %220
  %227 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %227)
  %228 = load i32, i32* %5, align 4
  ret i32 %228
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #2

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i32 @dma_map_page(i32, %struct.page*, i32, i32, i32) #2

declare dso_local i64 @dma_mapping_error(i32, i32) #2

declare dso_local i32 @__free_page(%struct.page*) #2

declare dso_local i32 @set_page_private(%struct.page*, i32) #2

declare dso_local i32 @vmap(%struct.page**, i32, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i8* @cpu_to_le32(i64) #2

declare dso_local i64 @ar_buffer_bus(%struct.ar_context*, i32) #2

declare dso_local i32 @ar_next_buffer_index(i32) #2

declare dso_local i32 @ar_context_release(%struct.ar_context*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
