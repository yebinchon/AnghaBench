; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_read_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ads7846.c_ads7846_read_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads7846 = type { i32, i32 (i32, i32, i32*)*, i32, %struct.TYPE_4__*, %struct.spi_message*, i32 (...)*, %struct.ads7846_packet* }
%struct.TYPE_4__ = type { i32 }
%struct.spi_message = type { i32 }
%struct.ads7846_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"spi_sync --> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ads7846*)* @ads7846_read_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads7846_read_state(%struct.ads7846* %0) #0 {
  %2 = alloca %struct.ads7846*, align 8
  %3 = alloca %struct.ads7846_packet*, align 8
  %4 = alloca %struct.spi_message*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ads7846* %0, %struct.ads7846** %2, align 8
  %9 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %10 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %9, i32 0, i32 6
  %11 = load %struct.ads7846_packet*, %struct.ads7846_packet** %10, align 8
  store %struct.ads7846_packet* %11, %struct.ads7846_packet** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %90, %67, %66, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %15 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %12
  %19 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %20 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %19, i32 0, i32 5
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  %23 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %24 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %23, i32 0, i32 4
  %25 = load %struct.spi_message*, %struct.spi_message** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %25, i64 %27
  store %struct.spi_message* %28, %struct.spi_message** %4, align 8
  %29 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %30 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %33 = call i32 @spi_sync(%struct.TYPE_4__* %31, %struct.spi_message* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %18
  %37 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %38 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %44 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  br label %91

46:                                               ; preds = %18
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %49 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %87

53:                                               ; preds = %46
  %54 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %55 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %56 = call i32 @ads7846_get_value(%struct.ads7846* %54, %struct.spi_message* %55)
  store i32 %56, i32* %6, align 4
  %57 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %58 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %57, i32 0, i32 1
  %59 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %58, align 8
  %60 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %61 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 %59(i32 %62, i32 %63, i32* %6)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %84 [
    i32 128, label %66
    i32 130, label %67
    i32 129, label %75
  ]

66:                                               ; preds = %53
  br label %12

67:                                               ; preds = %53
  %68 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %69 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.ads7846*, %struct.ads7846** %2, align 8
  %72 = getelementptr inbounds %struct.ads7846, %struct.ads7846* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %12

75:                                               ; preds = %53
  %76 = load %struct.spi_message*, %struct.spi_message** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ads7846_update_value(%struct.spi_message* %76, i32 %77)
  %79 = load %struct.ads7846_packet*, %struct.ads7846_packet** %3, align 8
  %80 = getelementptr inbounds %struct.ads7846_packet, %struct.ads7846_packet* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 4
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %86

84:                                               ; preds = %53
  %85 = call i32 (...) @BUG()
  br label %86

86:                                               ; preds = %84, %75
  br label %90

87:                                               ; preds = %46
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %12

91:                                               ; preds = %36, %12
  ret void
}

declare dso_local i32 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ads7846_get_value(%struct.ads7846*, %struct.spi_message*) #1

declare dso_local i32 @ads7846_update_value(%struct.spi_message*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
