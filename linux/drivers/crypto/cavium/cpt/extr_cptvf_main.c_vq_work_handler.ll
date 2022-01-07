; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_vq_work_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptvf_main.c_vq_work_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cptvf_wqe_info = type { %struct.cptvf_wqe* }
%struct.cptvf_wqe = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @vq_work_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vq_work_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cptvf_wqe_info*, align 8
  %4 = alloca %struct.cptvf_wqe*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.cptvf_wqe_info*
  store %struct.cptvf_wqe_info* %6, %struct.cptvf_wqe_info** %3, align 8
  %7 = load %struct.cptvf_wqe_info*, %struct.cptvf_wqe_info** %3, align 8
  %8 = getelementptr inbounds %struct.cptvf_wqe_info, %struct.cptvf_wqe_info* %7, i32 0, i32 0
  %9 = load %struct.cptvf_wqe*, %struct.cptvf_wqe** %8, align 8
  %10 = getelementptr inbounds %struct.cptvf_wqe, %struct.cptvf_wqe* %9, i64 0
  store %struct.cptvf_wqe* %10, %struct.cptvf_wqe** %4, align 8
  %11 = load %struct.cptvf_wqe*, %struct.cptvf_wqe** %4, align 8
  %12 = getelementptr inbounds %struct.cptvf_wqe, %struct.cptvf_wqe* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cptvf_wqe*, %struct.cptvf_wqe** %4, align 8
  %15 = getelementptr inbounds %struct.cptvf_wqe, %struct.cptvf_wqe* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vq_post_process(i32 %13, i32 %16)
  ret void
}

declare dso_local i32 @vq_post_process(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
