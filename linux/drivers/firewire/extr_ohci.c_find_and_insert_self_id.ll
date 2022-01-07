; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_find_and_insert_self_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_ohci.c_find_and_insert_self_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_ohci = type { i32*, i32 }

@OHCI1394_NodeID = common dso_local global i32 0, align 4
@OHCI1394_NodeID_idValid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"node ID not valid, new bus reset in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_ohci*, i32)* @find_and_insert_self_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_and_insert_self_id(%struct.fw_ohci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_ohci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fw_ohci* %0, %struct.fw_ohci** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 -2143238144, i32* %10, align 4
  %11 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %12 = load i32, i32* @OHCI1394_NodeID, align 4
  %13 = call i32 @reg_read(%struct.fw_ohci* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @OHCI1394_NodeID_idValid, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %20 = call i32 @ohci_notice(%struct.fw_ohci* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %121

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 63
  %26 = shl i32 %25, 24
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %30 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %29, i32 0, i32 1
  %31 = call i32 @ohci_read_phy_reg(i32* %30, i32 4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %121

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 7
  %39 = shl i32 %38, 8
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %10, align 4
  %42 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %43 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %42, i32 0, i32 1
  %44 = call i32 @ohci_read_phy_reg(i32* %43, i32 1)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %121

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 63
  %52 = shl i32 %51, 16
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %75, %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %78

58:                                               ; preds = %55
  %59 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @get_status_for_port(%struct.fw_ohci* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %121

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 3
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sub nsw i32 6, %70
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %55

78:                                               ; preds = %55
  %79 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %80 = call i32 @initiated_reset(%struct.fw_ohci* %79)
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @get_self_id_pos(%struct.fw_ohci* %83, i32 %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %78
  %90 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %91 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %98 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memmove(i32* %96, i32* %102, i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.fw_ohci*, %struct.fw_ohci** %4, align 8
  %112 = getelementptr inbounds %struct.fw_ohci, %struct.fw_ohci* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %89, %78
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %64, %47, %34, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @reg_read(%struct.fw_ohci*, i32) #1

declare dso_local i32 @ohci_notice(%struct.fw_ohci*, i8*) #1

declare dso_local i32 @ohci_read_phy_reg(i32*, i32) #1

declare dso_local i32 @get_status_for_port(%struct.fw_ohci*, i32) #1

declare dso_local i32 @initiated_reset(%struct.fw_ohci*) #1

declare dso_local i32 @get_self_id_pos(%struct.fw_ohci*, i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
