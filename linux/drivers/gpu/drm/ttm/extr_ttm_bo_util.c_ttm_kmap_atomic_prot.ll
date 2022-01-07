; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_kmap_atomic_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ttm/extr_ttm_bo_util.c_ttm_kmap_atomic_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ttm_kmap_atomic_prot(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @pgprot_val(i32 %6)
  %8 = load i32, i32* @PAGE_KERNEL, align 4
  %9 = call i64 @pgprot_val(i32 %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.page*, %struct.page** %4, align 8
  %13 = call i8* @kmap_atomic(%struct.page* %12)
  store i8* %13, i8** %3, align 8
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @__ttm_kmap_atomic_prot(%struct.page* %15, i32 %16)
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i64 @pgprot_val(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i8* @__ttm_kmap_atomic_prot(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
