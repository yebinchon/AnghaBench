; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_eq_pf_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_eq_pf_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_pf_eq = type { i32, i32, i32, i32, i32 }
%struct.mlx5_eqe_page_fault = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.mlx5_pagefault = type { i32, i32, i32, i32, i32, %struct.mlx5_ib_pf_eq*, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i8* }
%struct.mlx5_eqe = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.mlx5_eqe_page_fault }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"PAGE_FAULT: subtype: 0x%02x, bytes_committed: 0x%06x\0A\00", align 1
@MLX5_24BIT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"PAGE_FAULT: type:0x%x, token: 0x%06x, r_key: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"PAGE_FAULT: rdma_op_len: 0x%08x, rdma_va: 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"PAGE_FAULT: type:0x%x, token: 0x%06x, wq_num: 0x%06x, wqe_index: 0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Unsupported page fault event sub-type: 0x%02hhx\0A\00", align 1
@mlx5_ib_eqe_pf_action = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_pf_eq*)* @mlx5_ib_eq_pf_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_ib_eq_pf_process(%struct.mlx5_ib_pf_eq* %0) #0 {
  %2 = alloca %struct.mlx5_ib_pf_eq*, align 8
  %3 = alloca %struct.mlx5_eqe_page_fault*, align 8
  %4 = alloca %struct.mlx5_pagefault*, align 8
  %5 = alloca %struct.mlx5_eqe*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_ib_pf_eq* %0, %struct.mlx5_ib_pf_eq** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %199, %1
  %8 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.mlx5_eqe* @mlx5_eq_get_eqe(i32 %10, i32 %11)
  store %struct.mlx5_eqe* %12, %struct.mlx5_eqe** %5, align 8
  %13 = icmp ne %struct.mlx5_eqe* %12, null
  br i1 %13, label %14, label %219

14:                                               ; preds = %7
  %15 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GFP_ATOMIC, align 4
  %19 = call %struct.mlx5_pagefault* @mempool_alloc(i32 %17, i32 %18)
  store %struct.mlx5_pagefault* %19, %struct.mlx5_pagefault** %4, align 8
  %20 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %21 = icmp ne %struct.mlx5_pagefault* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  %23 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %24 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %23, i32 0, i32 3
  %25 = call i32 @schedule_work(i32* %24)
  br label %219

26:                                               ; preds = %14
  %27 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store %struct.mlx5_eqe_page_fault* %29, %struct.mlx5_eqe_page_fault** %3, align 8
  %30 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %36 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %42 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, i32, ...) @mlx5_ib_dbg(i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %52 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %191 [
    i32 129, label %54
    i32 128, label %130
  ]

54:                                               ; preds = %26
  %55 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @be32_to_cpu(i32 %58)
  %60 = ashr i32 %59, 24
  %61 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %62 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %64 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32_to_cpu(i32 %66)
  %68 = load i32, i32* @MLX5_24BIT_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @be32_to_cpu(i32 %75)
  %77 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %81 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @be16_to_cpu(i32 %83)
  %85 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %86 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  store i8* %84, i8** %87, align 8
  %88 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %89 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be32_to_cpu(i32 %91)
  %93 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 %92, i32* %95, align 4
  %96 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %97 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @be64_to_cpu(i32 %99)
  %101 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %102 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i32 %100, i32* %103, align 8
  %104 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %105 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %111 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %114 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, i32, i32, ...) @mlx5_ib_dbg(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %112, i32 %116)
  %118 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %119 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %122 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %126 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, i32, i32, ...) @mlx5_ib_dbg(i32 %120, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %128)
  br label %199

130:                                              ; preds = %26
  %131 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %132 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @be32_to_cpu(i32 %134)
  %136 = ashr i32 %135, 24
  %137 = and i32 %136, 7
  %138 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %139 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %141 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @be32_to_cpu(i32 %143)
  %145 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %146 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %148 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @be32_to_cpu(i32 %150)
  %152 = load i32, i32* @MLX5_24BIT_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %155 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %154, i32 0, i32 6
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %158 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i8* @be16_to_cpu(i32 %160)
  %162 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %163 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %162, i32 0, i32 6
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  store i8* %161, i8** %164, align 8
  %165 = load %struct.mlx5_eqe_page_fault*, %struct.mlx5_eqe_page_fault** %3, align 8
  %166 = getelementptr inbounds %struct.mlx5_eqe_page_fault, %struct.mlx5_eqe_page_fault* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @be16_to_cpu(i32 %168)
  %170 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %171 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %170, i32 0, i32 6
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  store i8* %169, i8** %172, align 8
  %173 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %174 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %177 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %180 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %183 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %182, i32 0, i32 6
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %187 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 (i32, i8*, i32, i32, ...) @mlx5_ib_dbg(i32 %175, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %181, i32 %185, i8* %189)
  br label %199

191:                                              ; preds = %26
  %192 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %193 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.mlx5_eqe*, %struct.mlx5_eqe** %5, align 8
  %196 = getelementptr inbounds %struct.mlx5_eqe, %struct.mlx5_eqe* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @mlx5_ib_warn(i32 %194, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %191, %130, %54
  %200 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %201 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %202 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %201, i32 0, i32 5
  store %struct.mlx5_ib_pf_eq* %200, %struct.mlx5_ib_pf_eq** %202, align 8
  %203 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %204 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %203, i32 0, i32 4
  %205 = load i32, i32* @mlx5_ib_eqe_pf_action, align 4
  %206 = call i32 @INIT_WORK(i32* %204, i32 %205)
  %207 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %208 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.mlx5_pagefault*, %struct.mlx5_pagefault** %4, align 8
  %211 = getelementptr inbounds %struct.mlx5_pagefault, %struct.mlx5_pagefault* %210, i32 0, i32 4
  %212 = call i32 @queue_work(i32 %209, i32* %211)
  %213 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %214 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  %218 = call i32 @mlx5_eq_update_cc(i32 %215, i32 %217)
  store i32 %218, i32* %6, align 4
  br label %7

219:                                              ; preds = %22, %7
  %220 = load %struct.mlx5_ib_pf_eq*, %struct.mlx5_ib_pf_eq** %2, align 8
  %221 = getelementptr inbounds %struct.mlx5_ib_pf_eq, %struct.mlx5_ib_pf_eq* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @mlx5_eq_update_ci(i32 %222, i32 %223, i32 1)
  ret void
}

declare dso_local %struct.mlx5_eqe* @mlx5_eq_get_eqe(i32, i32) #1

declare dso_local %struct.mlx5_pagefault* @mempool_alloc(i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5_ib_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @mlx5_ib_warn(i32, i8*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mlx5_eq_update_cc(i32, i32) #1

declare dso_local i32 @mlx5_eq_update_ci(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
