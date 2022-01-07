; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_arp_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_arp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40iw_arp_table(%struct.i40iw_device* %0, i64* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i64], align 16
  store %struct.i40iw_device* %0, %struct.i40iw_device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %19 = call i32 @memset(i64* %18, i32 0, i32 32)
  %20 = load i64*, i64** %8, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  store i64 %21, i64* %22, align 16
  br label %27

23:                                               ; preds = %5
  %24 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %25 = load i64*, i64** %8, align 8
  %26 = call i32 @memcpy(i64* %24, i64* %25, i32 32)
  br label %27

27:                                               ; preds = %23, %17
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %49, %27
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %52

35:                                               ; preds = %28
  %36 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %37 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %45 = call i64 @memcmp(i64* %43, i64* %44, i32 32)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  br label %52

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %28

52:                                               ; preds = %47, %28
  %53 = load i64, i64* %11, align 8
  switch i64 %53, label %142 [
    i64 130, label %54
    i64 128, label %100
    i64 129, label %109
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %58 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %6, align 4
  br label %145

62:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  %63 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %64 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %65 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %68 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = bitcast i32* %12 to i64*
  %72 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %73 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %72, i32 0, i32 3
  %74 = call i32 @i40iw_alloc_resource(%struct.i40iw_device* %63, i32 %66, i32 %70, i64* %71, i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %145

79:                                               ; preds = %62
  %80 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %81 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds [4 x i64], [4 x i64]* %14, i64 0, i64 0
  %89 = call i32 @memcpy(i64* %87, i64* %88, i32 32)
  %90 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %91 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = call i32 @ether_addr_copy(i32 %97, i32* %98)
  br label %143

100:                                              ; preds = %52
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %104 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 -1, i32* %6, align 4
  br label %145

108:                                              ; preds = %100
  br label %143

109:                                              ; preds = %52
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %113 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp eq i64 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 -1, i32* %6, align 4
  br label %145

117:                                              ; preds = %109
  %118 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %119 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %118, i32 0, i32 2
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @memset(i64* %125, i32 0, i32 8)
  %127 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %128 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %12, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @eth_zero_addr(i32 %134)
  %136 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %137 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %138 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @i40iw_free_resource(%struct.i40iw_device* %136, i32 %139, i32 %140)
  br label %143

142:                                              ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %145

143:                                              ; preds = %117, %108, %79
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %142, %116, %107, %77, %61
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i64*, i32) #1

declare dso_local i32 @i40iw_alloc_resource(%struct.i40iw_device*, i32, i32, i64*, i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @i40iw_free_resource(%struct.i40iw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
