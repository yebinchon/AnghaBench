; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___f17h_set_scrubval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c___f17h_set_scrubval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd64_pvt = type { i32 }

@F17H_SCR_LIMIT_ADDR = common dso_local global i32 0, align 4
@F17H_SCR_BASE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd64_pvt*, i32)* @__f17h_set_scrubval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__f17h_set_scrubval(%struct.amd64_pvt* %0, i32 %1) #0 {
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca i32, align 4
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 5
  br i1 %6, label %7, label %24

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 20
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 5
  store i32 %12, i32* %4, align 4
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @F17H_SCR_LIMIT_ADDR, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_write_bits32(i32 %15, i32 %16, i32 %17, i32 15)
  %19 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @F17H_SCR_BASE_ADDR, align 4
  %23 = call i32 @pci_write_bits32(i32 %21, i32 %22, i32 1, i32 1)
  br label %30

24:                                               ; preds = %7, %2
  %25 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %26 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @F17H_SCR_BASE_ADDR, align 4
  %29 = call i32 @pci_write_bits32(i32 %27, i32 %28, i32 0, i32 1)
  br label %30

30:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @pci_write_bits32(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
