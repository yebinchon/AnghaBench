; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_set_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_set_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcilynx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"PHY register address %d out of range\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"PHY register value %d out of range\0A\00", align 1
@LINK_PHY = common dso_local global i32 0, align 4
@LINK_PHY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcilynx*, i32, i32)* @set_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phy_reg(%struct.pcilynx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcilynx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcilynx* %0, %struct.pcilynx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 15
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.pcilynx*, %struct.pcilynx** %5, align 8
  %12 = getelementptr inbounds %struct.pcilynx, %struct.pcilynx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp sgt i32 %18, 255
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.pcilynx*, %struct.pcilynx** %5, align 8
  %22 = getelementptr inbounds %struct.pcilynx, %struct.pcilynx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 -1, i32* %4, align 4
  br label %38

27:                                               ; preds = %17
  %28 = load %struct.pcilynx*, %struct.pcilynx** %5, align 8
  %29 = load i32, i32* @LINK_PHY, align 4
  %30 = load i32, i32* @LINK_PHY_WRITE, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @LINK_PHY_ADDR(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @LINK_PHY_WDATA(i32 %34)
  %36 = or i32 %33, %35
  %37 = call i32 @reg_write(%struct.pcilynx* %28, i32 %29, i32 %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %20, %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.pcilynx*, i32, i32) #1

declare dso_local i32 @LINK_PHY_ADDR(i32) #1

declare dso_local i32 @LINK_PHY_WDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
