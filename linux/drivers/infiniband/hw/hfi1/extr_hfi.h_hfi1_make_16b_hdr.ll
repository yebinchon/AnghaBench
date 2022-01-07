; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_make_16b_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_make_16b_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_16b_header = type { i32* }

@OPA_16B_BECN_MASK = common dso_local global i32 0, align 4
@OPA_16B_BECN_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_LEN_MASK = common dso_local global i32 0, align 4
@OPA_16B_LEN_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_LID_MASK = common dso_local global i32 0, align 4
@OPA_16B_FECN_MASK = common dso_local global i32 0, align 4
@OPA_16B_FECN_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_SC_MASK = common dso_local global i32 0, align 4
@OPA_16B_SC_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_SLID_MASK = common dso_local global i32 0, align 4
@OPA_16B_SLID_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_SLID_HIGH_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_DLID_MASK = common dso_local global i32 0, align 4
@OPA_16B_DLID_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_DLID_HIGH_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_PKEY_MASK = common dso_local global i32 0, align 4
@OPA_16B_PKEY_SHIFT = common dso_local global i32 0, align 4
@OPA_16B_L4_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_16b_header*, i32, i32, i32, i32, i32, i32, i32, i32)* @hfi1_make_16b_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hfi1_make_16b_hdr(%struct.hfi1_16b_header* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.hfi1_16b_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.hfi1_16b_header* %0, %struct.hfi1_16b_header** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 1073741824, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %19, align 4
  %24 = load i32, i32* @OPA_16B_BECN_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @OPA_16B_BECN_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = or i32 %26, %29
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* @OPA_16B_LEN_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @OPA_16B_LEN_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %34, %37
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* @OPA_16B_LID_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @OPA_16B_LID_MASK, align 4
  %45 = and i32 %43, %44
  %46 = or i32 %42, %45
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* @OPA_16B_FECN_MASK, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* @OPA_16B_FECN_SHIFT, align 4
  %53 = shl i32 %51, %52
  %54 = or i32 %50, %53
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = load i32, i32* @OPA_16B_SC_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @OPA_16B_SC_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = or i32 %58, %61
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* @OPA_16B_LID_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @OPA_16B_LID_MASK, align 4
  %69 = and i32 %67, %68
  %70 = or i32 %66, %69
  store i32 %70, i32* %20, align 4
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* @OPA_16B_SLID_MASK, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @OPA_16B_SLID_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = load i32, i32* @OPA_16B_SLID_HIGH_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = or i32 %74, %79
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* @OPA_16B_DLID_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @OPA_16B_DLID_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = load i32, i32* @OPA_16B_DLID_HIGH_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %84, %89
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* @OPA_16B_PKEY_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* @OPA_16B_PKEY_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %94, %97
  store i32 %98, i32* %21, align 4
  %99 = load i32, i32* %21, align 4
  %100 = load i32, i32* @OPA_16B_L4_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = load i32, i32* %17, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %19, align 4
  %106 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %10, align 8
  %107 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %10, align 8
  %112 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 %110, i32* %114, align 4
  %115 = load i32, i32* %21, align 4
  %116 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %10, align 8
  %117 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load %struct.hfi1_16b_header*, %struct.hfi1_16b_header** %10, align 8
  %122 = getelementptr inbounds %struct.hfi1_16b_header, %struct.hfi1_16b_header* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32 %120, i32* %124, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
