; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_send_tiger_bc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_netjet.c_send_tiger_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tiger_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.tiger_ch = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@TX_UNDERRUN = common dso_local global i32 0, align 4
@TX_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: B%1d TX underrun state %x\0A\00", align 1
@FLG_HDLC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: B%1d TX no data free %d idx %d/%d\0A\00", align 1
@TX_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tiger_hw*, %struct.tiger_ch*)* @send_tiger_bc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_tiger_bc(%struct.tiger_hw* %0, %struct.tiger_ch* %1) #0 {
  %3 = alloca %struct.tiger_hw*, align 8
  %4 = alloca %struct.tiger_ch*, align 8
  %5 = alloca i32, align 4
  store %struct.tiger_hw* %0, %struct.tiger_hw** %3, align 8
  store %struct.tiger_ch* %1, %struct.tiger_ch** %4, align 8
  %6 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %7 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 2
  %11 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %12 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %16 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %19 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %2
  %24 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %25 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @TX_UNDERRUN, align 4
  %28 = load i32, i32* @TX_INIT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %23
  %33 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %34 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %37 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %41 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %42)
  %44 = load i32, i32* @TX_UNDERRUN, align 4
  %45 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %46 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %32, %23
  %50 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %51 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %55 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %2
  %57 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %58 = call i32 @bc_next_frame(%struct.tiger_ch* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %123, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @FLG_HDLC, align 4
  %63 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %64 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i64 @test_bit(i32 %62, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %70 = call i32 @fill_hdlc_flag(%struct.tiger_ch* %69)
  br label %123

71:                                               ; preds = %61
  %72 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %73 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %76 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %80 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %83 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %86 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %74, i32 %78, i32 %81, i32 %84, i32 %88)
  %90 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %91 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TX_IDLE, align 4
  %94 = load i32, i32* @TX_INIT, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %122, label %98

98:                                               ; preds = %71
  %99 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %100 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %101 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %104 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fill_mem(%struct.tiger_ch* %99, i32 %102, i32 %105, i32 255)
  %107 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %108 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.tiger_hw*, %struct.tiger_hw** %3, align 8
  %111 = getelementptr inbounds %struct.tiger_hw, %struct.tiger_hw* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %98
  %116 = load i32, i32* @TX_IDLE, align 4
  %117 = load %struct.tiger_ch*, %struct.tiger_ch** %4, align 8
  %118 = getelementptr inbounds %struct.tiger_ch, %struct.tiger_ch* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %98
  br label %122

122:                                              ; preds = %121, %71
  br label %123

123:                                              ; preds = %68, %122, %56
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @bc_next_frame(%struct.tiger_ch*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @fill_hdlc_flag(%struct.tiger_ch*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fill_mem(%struct.tiger_ch*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
