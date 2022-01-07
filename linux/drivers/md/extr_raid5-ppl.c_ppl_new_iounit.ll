; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_new_iounit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5-ppl.c_ppl_new_iounit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppl_io_unit = type { i32, %struct.page*, i32, i32, i32, i32, i32, i32, %struct.ppl_log* }
%struct.page = type { i32 }
%struct.ppl_log = type { %struct.ppl_conf* }
%struct.ppl_conf = type { i32, i32, i32 }
%struct.stripe_head = type { i32 }
%struct.ppl_header = type { i32, i32, %struct.ppl_io_unit* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@PPL_IO_INLINE_BVECS = common dso_local global i32 0, align 4
@PPL_HDR_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ppl_io_unit* (%struct.ppl_log*, %struct.stripe_head*)* @ppl_new_iounit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ppl_io_unit* @ppl_new_iounit(%struct.ppl_log* %0, %struct.stripe_head* %1) #0 {
  %3 = alloca %struct.ppl_io_unit*, align 8
  %4 = alloca %struct.ppl_log*, align 8
  %5 = alloca %struct.stripe_head*, align 8
  %6 = alloca %struct.ppl_conf*, align 8
  %7 = alloca %struct.ppl_io_unit*, align 8
  %8 = alloca %struct.ppl_header*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.ppl_log* %0, %struct.ppl_log** %4, align 8
  store %struct.stripe_head* %1, %struct.stripe_head** %5, align 8
  %10 = load %struct.ppl_log*, %struct.ppl_log** %4, align 8
  %11 = getelementptr inbounds %struct.ppl_log, %struct.ppl_log* %10, i32 0, i32 0
  %12 = load %struct.ppl_conf*, %struct.ppl_conf** %11, align 8
  store %struct.ppl_conf* %12, %struct.ppl_conf** %6, align 8
  %13 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %14 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %13, i32 0, i32 2
  %15 = load i32, i32* @GFP_NOWAIT, align 4
  %16 = call %struct.ppl_io_unit* @mempool_alloc(i32* %14, i32 %15)
  store %struct.ppl_io_unit* %16, %struct.ppl_io_unit** %7, align 8
  %17 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %18 = icmp ne %struct.ppl_io_unit* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.ppl_io_unit* null, %struct.ppl_io_unit** %3, align 8
  br label %80

20:                                               ; preds = %2
  %21 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %22 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %21, i32 0, i32 1
  %23 = load %struct.page*, %struct.page** %22, align 8
  store %struct.page* %23, %struct.page** %9, align 8
  %24 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %25 = call i32 @memset(%struct.ppl_io_unit* %24, i32 0, i32 48)
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %28 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %27, i32 0, i32 1
  store %struct.page* %26, %struct.page** %28, align 8
  %29 = load %struct.ppl_log*, %struct.ppl_log** %4, align 8
  %30 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %31 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %30, i32 0, i32 8
  store %struct.ppl_log* %29, %struct.ppl_log** %31, align 8
  %32 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %33 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %32, i32 0, i32 7
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %36 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %35, i32 0, i32 6
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %39 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %38, i32 0, i32 5
  %40 = call i32 @atomic_set(i32* %39, i32 0)
  %41 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %42 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %41, i32 0, i32 4
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %45 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %44, i32 0, i32 3
  %46 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %47 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PPL_IO_INLINE_BVECS, align 4
  %50 = call i32 @bio_init(i32* %45, i32 %48, i32 %49)
  %51 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %52 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %51, i32 0, i32 1
  %53 = load %struct.page*, %struct.page** %52, align 8
  %54 = call %struct.ppl_header* @page_address(%struct.page* %53)
  store %struct.ppl_header* %54, %struct.ppl_header** %8, align 8
  %55 = load %struct.ppl_header*, %struct.ppl_header** %8, align 8
  %56 = call i32 @clear_page(%struct.ppl_header* %55)
  %57 = load %struct.ppl_header*, %struct.ppl_header** %8, align 8
  %58 = getelementptr inbounds %struct.ppl_header, %struct.ppl_header* %57, i32 0, i32 2
  %59 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %58, align 8
  %60 = load i32, i32* @PPL_HDR_RESERVED, align 4
  %61 = call i32 @memset(%struct.ppl_io_unit* %59, i32 255, i32 %60)
  %62 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %63 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @cpu_to_le32(i32 %64)
  %66 = load %struct.ppl_header*, %struct.ppl_header** %8, align 8
  %67 = getelementptr inbounds %struct.ppl_header, %struct.ppl_header* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ppl_conf*, %struct.ppl_conf** %6, align 8
  %69 = getelementptr inbounds %struct.ppl_conf, %struct.ppl_conf* %68, i32 0, i32 0
  %70 = call i32 @atomic64_add_return(i32 1, i32* %69)
  %71 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %72 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  %74 = getelementptr inbounds %struct.ppl_io_unit, %struct.ppl_io_unit* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @cpu_to_le64(i32 %75)
  %77 = load %struct.ppl_header*, %struct.ppl_header** %8, align 8
  %78 = getelementptr inbounds %struct.ppl_header, %struct.ppl_header* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %7, align 8
  store %struct.ppl_io_unit* %79, %struct.ppl_io_unit** %3, align 8
  br label %80

80:                                               ; preds = %20, %19
  %81 = load %struct.ppl_io_unit*, %struct.ppl_io_unit** %3, align 8
  ret %struct.ppl_io_unit* %81
}

declare dso_local %struct.ppl_io_unit* @mempool_alloc(i32*, i32) #1

declare dso_local i32 @memset(%struct.ppl_io_unit*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bio_init(i32*, i32, i32) #1

declare dso_local %struct.ppl_header* @page_address(%struct.page*) #1

declare dso_local i32 @clear_page(%struct.ppl_header*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @atomic64_add_return(i32, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
