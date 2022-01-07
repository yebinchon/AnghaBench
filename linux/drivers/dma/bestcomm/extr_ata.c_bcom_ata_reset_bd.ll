; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_ata.c_bcom_ata_reset_bd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/bestcomm/extr_ata.c_bcom_ata_reset_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { i32, i32, i32, i64, i64, i32 }
%struct.bcom_ata_var = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcom_ata_reset_bd(%struct.bcom_task* %0) #0 {
  %2 = alloca %struct.bcom_task*, align 8
  %3 = alloca %struct.bcom_ata_var*, align 8
  store %struct.bcom_task* %0, %struct.bcom_task** %2, align 8
  %4 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %5 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %8 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %11 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  %14 = call i32 @memset(i32 %6, i32 0, i32 %13)
  %15 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %16 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %18 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.bcom_task*, %struct.bcom_task** %2, align 8
  %20 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @bcom_task_var(i32 %21)
  %23 = inttoptr i64 %22 to %struct.bcom_ata_var*
  store %struct.bcom_ata_var* %23, %struct.bcom_ata_var** %3, align 8
  %24 = load %struct.bcom_ata_var*, %struct.bcom_ata_var** %3, align 8
  %25 = getelementptr inbounds %struct.bcom_ata_var, %struct.bcom_ata_var* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bcom_ata_var*, %struct.bcom_ata_var** %3, align 8
  %28 = getelementptr inbounds %struct.bcom_ata_var, %struct.bcom_ata_var* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @bcom_task_var(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
