; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_rq_to_line_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_rq_to_line_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_rq = type { i32 }
%struct.ppa_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pblk_rq_to_line_put(%struct.pblk* %0, %struct.nvm_rq* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.nvm_rq*, align 8
  %5 = alloca %struct.ppa_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store %struct.nvm_rq* %1, %struct.nvm_rq** %4, align 8
  %7 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %8 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %7)
  store %struct.ppa_addr* %8, %struct.ppa_addr** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %24, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nvm_rq*, %struct.nvm_rq** %4, align 8
  %12 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.pblk*, %struct.pblk** %3, align 8
  %17 = load %struct.ppa_addr*, %struct.ppa_addr** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %17, i64 %19
  %21 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pblk_ppa_to_line_put(%struct.pblk* %16, i32 %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %9

27:                                               ; preds = %9
  ret void
}

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_ppa_to_line_put(%struct.pblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
