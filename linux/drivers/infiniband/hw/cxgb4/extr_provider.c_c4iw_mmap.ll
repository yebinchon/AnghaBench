; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_provider.c_c4iw_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i32, i32, i32, i8* }
%struct.c4iw_rdev = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.c4iw_mm_entry = type { i32 }
%struct.c4iw_ucontext = type { i32 }
%struct.TYPE_4__ = type { %struct.c4iw_rdev }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pgoff 0x%lx key 0x%x len %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*, %struct.vm_area_struct*)* @c4iw_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.c4iw_rdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.c4iw_mm_entry*, align 8
  %11 = alloca %struct.c4iw_ucontext*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = shl i32 %22, %23
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %190

41:                                               ; preds = %2
  %42 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %43 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_4__* @to_c4iw_dev(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store %struct.c4iw_rdev* %46, %struct.c4iw_rdev** %8, align 8
  %47 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %48 = call %struct.c4iw_ucontext* @to_c4iw_ucontext(%struct.ib_ucontext* %47)
  store %struct.c4iw_ucontext* %48, %struct.c4iw_ucontext** %11, align 8
  %49 = load %struct.c4iw_ucontext*, %struct.c4iw_ucontext** %11, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call %struct.c4iw_mm_entry* @remove_mmap(%struct.c4iw_ucontext* %49, i32 %50, i32 %51)
  store %struct.c4iw_mm_entry* %52, %struct.c4iw_mm_entry** %10, align 8
  %53 = load %struct.c4iw_mm_entry*, %struct.c4iw_mm_entry** %10, align 8
  %54 = icmp ne %struct.c4iw_mm_entry* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %190

58:                                               ; preds = %41
  %59 = load %struct.c4iw_mm_entry*, %struct.c4iw_mm_entry** %10, align 8
  %60 = getelementptr inbounds %struct.c4iw_mm_entry, %struct.c4iw_mm_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %12, align 4
  %62 = load %struct.c4iw_mm_entry*, %struct.c4iw_mm_entry** %10, align 8
  %63 = call i32 @kfree(%struct.c4iw_mm_entry* %62)
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %66 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pci_resource_start(i32 %68, i32 0)
  %70 = icmp sge i32 %64, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %58
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %74 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pci_resource_start(i32 %76, i32 0)
  %78 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %79 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pci_resource_len(i32 %81, i32 0)
  %83 = add nsw i32 %77, %82
  %84 = icmp slt i32 %72, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %71
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %87 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @pgprot_noncached(i8* %88)
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %91 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @PAGE_SHIFT, align 4
  %98 = ashr i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %92, i32 %95, i32 %98, i32 %99, i8* %102)
  store i32 %103, i32* %9, align 4
  br label %188

104:                                              ; preds = %71, %58
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %107 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pci_resource_start(i32 %109, i32 2)
  %111 = icmp sge i32 %105, %110
  br i1 %111, label %112, label %174

112:                                              ; preds = %104
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %115 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @pci_resource_start(i32 %117, i32 2)
  %119 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %120 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pci_resource_len(i32 %122, i32 2)
  %124 = add nsw i32 %118, %123
  %125 = icmp slt i32 %113, %124
  br i1 %125, label %126, label %174

126:                                              ; preds = %112
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %129 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %127, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126
  %133 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %134 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %133, i32 0, i32 3
  %135 = load i8*, i8** %134, align 8
  %136 = call i8* @t4_pgprot_wc(i8* %135)
  %137 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %138 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  br label %161

139:                                              ; preds = %126
  %140 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %141 = getelementptr inbounds %struct.c4iw_rdev, %struct.c4iw_rdev* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @is_t4(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %139
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %148 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = call i8* @t4_pgprot_wc(i8* %149)
  %151 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %152 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %160

153:                                              ; preds = %139
  %154 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %155 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %154, i32 0, i32 3
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @pgprot_noncached(i8* %156)
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %159 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  br label %160

160:                                              ; preds = %153, %146
  br label %161

161:                                              ; preds = %160, %132
  %162 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %163 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %164 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @PAGE_SHIFT, align 4
  %168 = ashr i32 %166, %167
  %169 = load i32, i32* %6, align 4
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %162, i32 %165, i32 %168, i32 %169, i8* %172)
  store i32 %173, i32* %9, align 4
  br label %187

174:                                              ; preds = %112, %104
  %175 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %177 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @PAGE_SHIFT, align 4
  %181 = ashr i32 %179, %180
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %184 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %183, i32 0, i32 3
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @remap_pfn_range(%struct.vm_area_struct* %175, i32 %178, i32 %181, i32 %182, i8* %185)
  store i32 %186, i32* %9, align 4
  br label %187

187:                                              ; preds = %174, %161
  br label %188

188:                                              ; preds = %187, %85
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %188, %55, %38
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_c4iw_dev(i32) #1

declare dso_local %struct.c4iw_ucontext* @to_c4iw_ucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.c4iw_mm_entry* @remove_mmap(%struct.c4iw_ucontext*, i32, i32) #1

declare dso_local i32 @kfree(%struct.c4iw_mm_entry*) #1

declare dso_local i32 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i8* @pgprot_noncached(i8*) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i8*) #1

declare dso_local i8* @t4_pgprot_wc(i8*) #1

declare dso_local i32 @is_t4(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
