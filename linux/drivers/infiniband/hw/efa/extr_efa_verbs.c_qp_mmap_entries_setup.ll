; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_qp_mmap_entries_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_qp_mmap_entries_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_qp = type { i64, i32 }
%struct.efa_dev = type { i64, i64 }
%struct.efa_ucontext = type { i32 }
%struct.efa_com_create_qp_params = type { i64 }
%struct.efa_ibv_create_qp_resp = type { i64, i32, i64, i32, i64, i32, i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@EFA_MMAP_IO_NC = common dso_local global i32 0, align 4
@EFA_MMAP_INVALID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EFA_MMAP_IO_WC = common dso_local global i32 0, align 4
@EFA_MMAP_DMA_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efa_qp*, %struct.efa_dev*, %struct.efa_ucontext*, %struct.efa_com_create_qp_params*, %struct.efa_ibv_create_qp_resp*)* @qp_mmap_entries_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_mmap_entries_setup(%struct.efa_qp* %0, %struct.efa_dev* %1, %struct.efa_ucontext* %2, %struct.efa_com_create_qp_params* %3, %struct.efa_ibv_create_qp_resp* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.efa_qp*, align 8
  %8 = alloca %struct.efa_dev*, align 8
  %9 = alloca %struct.efa_ucontext*, align 8
  %10 = alloca %struct.efa_com_create_qp_params*, align 8
  %11 = alloca %struct.efa_ibv_create_qp_resp*, align 8
  store %struct.efa_qp* %0, %struct.efa_qp** %7, align 8
  store %struct.efa_dev* %1, %struct.efa_dev** %8, align 8
  store %struct.efa_ucontext* %2, %struct.efa_ucontext** %9, align 8
  store %struct.efa_com_create_qp_params* %3, %struct.efa_com_create_qp_params** %10, align 8
  store %struct.efa_ibv_create_qp_resp* %4, %struct.efa_ibv_create_qp_resp** %11, align 8
  %12 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %13 = load %struct.efa_ucontext*, %struct.efa_ucontext** %9, align 8
  %14 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %15 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %16 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %19 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = load i32, i32* @EFA_MMAP_IO_NC, align 4
  %25 = call i8* @mmap_entry_insert(%struct.efa_dev* %12, %struct.efa_ucontext* %13, %struct.efa_qp* %14, i64 %22, i64 %23, i32 %24)
  %26 = ptrtoint i8* %25 to i64
  %27 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %28 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %30 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EFA_MMAP_INVALID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %154

37:                                               ; preds = %5
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %41 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %45 = load %struct.efa_ucontext*, %struct.efa_ucontext** %9, align 8
  %46 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %47 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %48 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %51 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = load %struct.efa_com_create_qp_params*, %struct.efa_com_create_qp_params** %10, align 8
  %56 = getelementptr inbounds %struct.efa_com_create_qp_params, %struct.efa_com_create_qp_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %59 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %57, %64
  %66 = call i64 @PAGE_ALIGN(i64 %65)
  %67 = load i32, i32* @EFA_MMAP_IO_WC, align 4
  %68 = call i8* @mmap_entry_insert(%struct.efa_dev* %44, %struct.efa_ucontext* %45, %struct.efa_qp* %46, i64 %54, i64 %66, i32 %67)
  %69 = ptrtoint i8* %68 to i64
  %70 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %71 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %73 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EFA_MMAP_INVALID, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %37
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %154

80:                                               ; preds = %37
  %81 = load i32, i32* @PAGE_MASK, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %84 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %88 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %153

91:                                               ; preds = %80
  %92 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %93 = load %struct.efa_ucontext*, %struct.efa_ucontext** %9, align 8
  %94 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %95 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %96 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %99 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = load i32, i32* @EFA_MMAP_IO_NC, align 4
  %105 = call i8* @mmap_entry_insert(%struct.efa_dev* %92, %struct.efa_ucontext* %93, %struct.efa_qp* %94, i64 %102, i64 %103, i32 %104)
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %108 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %107, i32 0, i32 4
  store i64 %106, i64* %108, align 8
  %109 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %110 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EFA_MMAP_INVALID, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %91
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %154

117:                                              ; preds = %91
  %118 = load i32, i32* @PAGE_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %121 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 8
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.efa_dev*, %struct.efa_dev** %8, align 8
  %125 = load %struct.efa_ucontext*, %struct.efa_ucontext** %9, align 8
  %126 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %127 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %128 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @virt_to_phys(i32 %129)
  %131 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %132 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @EFA_MMAP_DMA_PAGE, align 4
  %135 = call i8* @mmap_entry_insert(%struct.efa_dev* %124, %struct.efa_ucontext* %125, %struct.efa_qp* %126, i64 %130, i64 %133, i32 %134)
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %138 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %137, i32 0, i32 6
  store i64 %136, i64* %138, align 8
  %139 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %140 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %139, i32 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @EFA_MMAP_INVALID, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %117
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %154

147:                                              ; preds = %117
  %148 = load %struct.efa_qp*, %struct.efa_qp** %7, align 8
  %149 = getelementptr inbounds %struct.efa_qp, %struct.efa_qp* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.efa_ibv_create_qp_resp*, %struct.efa_ibv_create_qp_resp** %11, align 8
  %152 = getelementptr inbounds %struct.efa_ibv_create_qp_resp, %struct.efa_ibv_create_qp_resp* %151, i32 0, i32 7
  store i64 %150, i64* %152, align 8
  br label %153

153:                                              ; preds = %147, %80
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %144, %114, %77, %34
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i8* @mmap_entry_insert(%struct.efa_dev*, %struct.efa_ucontext*, %struct.efa_qp*, i64, i64, i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
