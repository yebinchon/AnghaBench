; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_chunk_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_bb_chunk_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { i32, i32, i32, i32, i32, %struct.bio*, i32* }
%struct.bio = type { i32 }
%struct.bio_vec = type { i32 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@NVM_OP_PREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, i32)* @nvm_bb_chunk_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_bb_chunk_sense(%struct.nvm_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppa_addr, align 4
  %5 = alloca %struct.nvm_dev*, align 8
  %6 = alloca %struct.nvm_rq, align 8
  %7 = alloca %struct.bio, align 4
  %8 = alloca %struct.bio_vec, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %5, align 8
  %12 = bitcast %struct.nvm_rq* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.page* @alloc_page(i32 %13)
  store %struct.page* %14, %struct.page** %9, align 8
  %15 = load %struct.page*, %struct.page** %9, align 8
  %16 = icmp ne %struct.page* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = call i32 @bio_init(%struct.bio* %7, %struct.bio_vec* %8, i32 1)
  %22 = load %struct.page*, %struct.page** %9, align 8
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = call i32 @bio_add_page(%struct.bio* %7, %struct.page* %22, i32 %23, i32 0)
  %25 = load i32, i32* @REQ_OP_READ, align 4
  %26 = call i32 @bio_set_op_attrs(%struct.bio* %7, i32 %25, i32 0)
  %27 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 5
  store %struct.bio* %7, %struct.bio** %27, align 8
  %28 = load i32, i32* @NVM_OP_PREAD, align 4
  %29 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %33 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @generic_to_dev_addr(%struct.nvm_dev* %32, i32 %34)
  %36 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 3
  store i32 %35, i32* %36, align 4
  %37 = load %struct.nvm_dev*, %struct.nvm_dev** %5, align 8
  %38 = call i32 @nvm_submit_io_sync_raw(%struct.nvm_dev* %37, %struct.nvm_rq* %6)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %20
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %20
  %44 = load %struct.page*, %struct.page** %9, align 8
  %45 = call i32 @__free_page(%struct.page* %44)
  %46 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %6, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %43, %41, %17
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.page* @alloc_page(i32) #2

declare dso_local i32 @bio_init(%struct.bio*, %struct.bio_vec*, i32) #2

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #2

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #2

declare dso_local i32 @generic_to_dev_addr(%struct.nvm_dev*, i32) #2

declare dso_local i32 @nvm_submit_io_sync_raw(%struct.nvm_dev*, %struct.nvm_rq*) #2

declare dso_local i32 @__free_page(%struct.page*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
