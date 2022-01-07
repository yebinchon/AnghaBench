; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_find_branch_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_find_branch_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descriptor = type { i32 }

@DESCRIPTOR_BRANCH_ALWAYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.descriptor* (%struct.descriptor*, i32)* @find_branch_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.descriptor* @find_branch_descriptor(%struct.descriptor* %0, i32 %1) #0 {
  %3 = alloca %struct.descriptor*, align 8
  %4 = alloca %struct.descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.descriptor* %0, %struct.descriptor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %8 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = and i32 %9, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @DESCRIPTOR_BRANCH_ALWAYS, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  store %struct.descriptor* %21, %struct.descriptor** %3, align 8
  br label %28

22:                                               ; preds = %15, %2
  %23 = load %struct.descriptor*, %struct.descriptor** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %23, i64 %25
  %27 = getelementptr inbounds %struct.descriptor, %struct.descriptor* %26, i64 -1
  store %struct.descriptor* %27, %struct.descriptor** %3, align 8
  br label %28

28:                                               ; preds = %22, %20
  %29 = load %struct.descriptor*, %struct.descriptor** %3, align 8
  ret %struct.descriptor* %29
}

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
