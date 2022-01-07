; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_thread_update_delay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_thread_update_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, i32, i32, i32, %struct.dvb_ca_slot* }
%struct.dvb_ca_slot = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_FLAG_IRQ_DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_ca_private*)* @dvb_ca_en50221_thread_update_delay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_ca_en50221_thread_update_delay(%struct.dvb_ca_private* %0) #0 {
  %2 = alloca %struct.dvb_ca_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_slot*, align 8
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %2, align 8
  store i32 100000000, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %94, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %97

13:                                               ; preds = %7
  %14 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %15 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %14, i32 0, i32 4
  %16 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %16, i64 %18
  store %struct.dvb_ca_slot* %19, %struct.dvb_ca_slot** %6, align 8
  %20 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %21 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %23 [
    i32 133, label %24
    i32 135, label %37
    i32 131, label %50
    i32 128, label %50
    i32 130, label %50
    i32 129, label %50
    i32 134, label %50
    i32 132, label %53
  ]

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %13, %23
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %25, 60
  store i32 %26, i32* %3, align 4
  %27 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 %34, 5
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %24
  br label %87

37:                                               ; preds = %13
  %38 = load i32, i32* @HZ, align 4
  %39 = mul nsw i32 %38, 60
  store i32 %39, i32* %3, align 4
  %40 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %41 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @HZ, align 4
  %48 = sdiv i32 %47, 10
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %37
  br label %87

50:                                               ; preds = %13, %13, %13, %13, %13
  %51 = load i32, i32* @HZ, align 4
  %52 = sdiv i32 %51, 10
  store i32 %52, i32* %3, align 4
  br label %87

53:                                               ; preds = %13
  %54 = load i32, i32* @HZ, align 4
  %55 = mul nsw i32 %54, 60
  store i32 %55, i32* %3, align 4
  %56 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %57 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 10
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %53
  %66 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %67 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %72 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %77 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_DA, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* @HZ, align 4
  %84 = sdiv i32 %83, 10
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %82, %75
  br label %86

86:                                               ; preds = %85, %65
  br label %87

87:                                               ; preds = %86, %50, %49, %36
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i32, i32* %3, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %7

97:                                               ; preds = %7
  %98 = load i32, i32* %4, align 4
  %99 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %100 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
