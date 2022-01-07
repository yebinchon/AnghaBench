; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_pasid_clear_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_pasid_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_entry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasid_entry*)* @pasid_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasid_clear_entry(%struct.pasid_entry* %0) #0 {
  %2 = alloca %struct.pasid_entry*, align 8
  store %struct.pasid_entry* %0, %struct.pasid_entry** %2, align 8
  %3 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %4 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @WRITE_ONCE(i32 %7, i32 0)
  %9 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %10 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @WRITE_ONCE(i32 %13, i32 0)
  %15 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %16 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @WRITE_ONCE(i32 %19, i32 0)
  %21 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %22 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @WRITE_ONCE(i32 %25, i32 0)
  %27 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %28 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @WRITE_ONCE(i32 %31, i32 0)
  %33 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %34 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @WRITE_ONCE(i32 %37, i32 0)
  %39 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %40 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @WRITE_ONCE(i32 %43, i32 0)
  %45 = load %struct.pasid_entry*, %struct.pasid_entry** %2, align 8
  %46 = getelementptr inbounds %struct.pasid_entry, %struct.pasid_entry* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @WRITE_ONCE(i32 %49, i32 0)
  ret void
}

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
