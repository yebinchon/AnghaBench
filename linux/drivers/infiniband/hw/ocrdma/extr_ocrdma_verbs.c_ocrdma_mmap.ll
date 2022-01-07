; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32, i32 }
%struct.ocrdma_ucontext = type { i32 }
%struct.ocrdma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocrdma_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.ocrdma_ucontext*, align 8
  %7 = alloca %struct.ocrdma_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = call %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext* %13)
  store %struct.ocrdma_ucontext* %14, %struct.ocrdma_ucontext** %6, align 8
  %15 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %16 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.ocrdma_dev* @get_ocrdma_dev(i32 %17)
  store %struct.ocrdma_dev* %18, %struct.ocrdma_dev** %7, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %8, align 8
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %25 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = sub i64 %30, %34
  store i64 %35, i64* %10, align 8
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %186

46:                                               ; preds = %2
  %47 = load %struct.ocrdma_ucontext*, %struct.ocrdma_ucontext** %6, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = shl i64 %50, %51
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @ocrdma_search_mmap(%struct.ocrdma_ucontext* %47, i64 %52, i64 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %186

60:                                               ; preds = %46
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %60
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %68 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %66, %70
  %72 = icmp ule i64 %65, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %64
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %76 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ule i64 %74, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @VM_READ, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %186

90:                                               ; preds = %80
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pgprot_noncached(i32 %93)
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %99 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %106 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %97, i32 %100, i64 %103, i64 %104, i32 %107)
  store i32 %108, i32* %11, align 4
  br label %184

109:                                              ; preds = %73, %64, %60
  %110 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %111 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %170

115:                                              ; preds = %109
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %118 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp uge i64 %116, %120
  br i1 %121, label %122, label %170

122:                                              ; preds = %115
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %125 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %129 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %127, %131
  %133 = icmp ule i64 %123, %132
  br i1 %133, label %134, label %170

134:                                              ; preds = %122
  %135 = load i64, i64* %10, align 8
  %136 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %7, align 8
  %137 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp ule i64 %135, %139
  br i1 %140, label %141, label %170

141:                                              ; preds = %134
  %142 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %143 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @VM_READ, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load i32, i32* @EPERM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %186

151:                                              ; preds = %141
  %152 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %153 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @pgprot_writecombine(i32 %154)
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %159 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %160 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %163 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %10, align 8
  %166 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %167 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %158, i32 %161, i64 %164, i64 %165, i32 %168)
  store i32 %169, i32* %11, align 4
  br label %183

170:                                              ; preds = %134, %122, %115, %109
  %171 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %172 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %173 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %176 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %180 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @remap_pfn_range(%struct.vm_area_struct* %171, i32 %174, i64 %177, i64 %178, i32 %181)
  store i32 %182, i32* %11, align 4
  br label %183

183:                                              ; preds = %170, %151
  br label %184

184:                                              ; preds = %183, %90
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %186

186:                                              ; preds = %184, %148, %87, %57, %43
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local %struct.ocrdma_ucontext* @get_ocrdma_ucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.ocrdma_dev* @get_ocrdma_dev(i32) #1

declare dso_local i32 @ocrdma_search_mmap(%struct.ocrdma_ucontext*, i64, i64) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i32) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
