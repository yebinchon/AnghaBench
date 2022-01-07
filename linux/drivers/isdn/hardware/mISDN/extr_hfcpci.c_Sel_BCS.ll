; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_Sel_BCS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_hfcpci.c_Sel_BCS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32 }
%struct.hfc_pci = type { %struct.bchannel* }

@FLG_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bchannel* (%struct.hfc_pci*, i32)* @Sel_BCS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bchannel* @Sel_BCS(%struct.hfc_pci* %0, i32 %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca %struct.hfc_pci*, align 8
  %5 = alloca i32, align 4
  store %struct.hfc_pci* %0, %struct.hfc_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @FLG_ACTIVE, align 4
  %7 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %8 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %7, i32 0, i32 0
  %9 = load %struct.bchannel*, %struct.bchannel** %8, align 8
  %10 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %9, i64 0
  %11 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %6, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %16 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %15, i32 0, i32 0
  %17 = load %struct.bchannel*, %struct.bchannel** %16, align 8
  %18 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %17, i64 0
  %19 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %26 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %25, i32 0, i32 0
  %27 = load %struct.bchannel*, %struct.bchannel** %26, align 8
  %28 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %27, i64 0
  store %struct.bchannel* %28, %struct.bchannel** %3, align 8
  br label %54

29:                                               ; preds = %14, %2
  %30 = load i32, i32* @FLG_ACTIVE, align 4
  %31 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %32 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %31, i32 0, i32 0
  %33 = load %struct.bchannel*, %struct.bchannel** %32, align 8
  %34 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %33, i64 1
  %35 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %30, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %29
  %39 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %40 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %39, i32 0, i32 0
  %41 = load %struct.bchannel*, %struct.bchannel** %40, align 8
  %42 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %41, i64 1
  %43 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.hfc_pci*, %struct.hfc_pci** %4, align 8
  %50 = getelementptr inbounds %struct.hfc_pci, %struct.hfc_pci* %49, i32 0, i32 0
  %51 = load %struct.bchannel*, %struct.bchannel** %50, align 8
  %52 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %51, i64 1
  store %struct.bchannel* %52, %struct.bchannel** %3, align 8
  br label %54

53:                                               ; preds = %38, %29
  store %struct.bchannel* null, %struct.bchannel** %3, align 8
  br label %54

54:                                               ; preds = %53, %48, %24
  %55 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  ret %struct.bchannel* %55
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
