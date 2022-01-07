; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_check_chunk_state_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_check_chunk_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }
%struct.nvm_chk_meta = type { i32 }

@NVM_CHK_ST_OPEN = common dso_local global i32 0, align 4
@NVM_CHK_ST_CLOSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_check_chunk_state_update(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca %struct.ppa_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ppa_addr*, align 8
  %8 = alloca %struct.nvm_chk_meta*, align 8
  %9 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %10 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %11 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %10)
  store %struct.ppa_addr* %11, %struct.ppa_addr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %57, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %15 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %12
  %19 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %19, i64 %21
  store %struct.ppa_addr* %22, %struct.ppa_addr** %7, align 8
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %25 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.nvm_chk_meta* @pblk_dev_ppa_to_chunk(%struct.pblk* %23, i32 %26)
  store %struct.nvm_chk_meta* %27, %struct.nvm_chk_meta** %8, align 8
  %28 = load %struct.pblk*, %struct.pblk** %3, align 8
  %29 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %30 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @pblk_dev_ppa_to_chunk_addr(%struct.pblk* %28, i32 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load %struct.pblk*, %struct.pblk** %3, align 8
  %37 = call i32 @pblk_disk_name(%struct.pblk* %36)
  %38 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %39 = load i32, i32* @NVM_CHK_ST_OPEN, align 4
  %40 = call i32 @trace_pblk_chunk_state(i32 %37, %struct.ppa_addr* %38, i32 %39)
  br label %56

41:                                               ; preds = %18
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.nvm_chk_meta*, %struct.nvm_chk_meta** %8, align 8
  %44 = getelementptr inbounds %struct.nvm_chk_meta, %struct.nvm_chk_meta* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = icmp eq i64 %42, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.pblk*, %struct.pblk** %3, align 8
  %51 = call i32 @pblk_disk_name(%struct.pblk* %50)
  %52 = load %struct.ppa_addr*, %struct.ppa_addr** %7, align 8
  %53 = load i32, i32* @NVM_CHK_ST_CLOSED, align 4
  %54 = call i32 @trace_pblk_chunk_state(i32 %51, %struct.ppa_addr* %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %12

60:                                               ; preds = %12
  ret void
}

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local %struct.nvm_chk_meta* @pblk_dev_ppa_to_chunk(%struct.pblk*, i32) #1

declare dso_local i64 @pblk_dev_ppa_to_chunk_addr(%struct.pblk*, i32) #1

declare dso_local i32 @trace_pblk_chunk_state(i32, %struct.ppa_addr*, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
