; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dev_addr_changed_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_dev_addr_changed_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i64, %struct.TYPE_8__*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }
%union.ib_gid = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@IPOIB_FLAG_DEV_ADDR_SET = common dso_local global i32 0, align 4
@IPOIB_FLAG_DEV_ADDR_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*)* @ipoib_dev_addr_changed_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_dev_addr_changed_valid(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %union.ib_gid, align 8
  %5 = alloca %union.ib_gid, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 4
  %17 = bitcast %struct.TYPE_9__* %16 to %union.ib_gid*
  store %union.ib_gid* %17, %union.ib_gid** %6, align 8
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @rdma_query_gid(i32 %20, i64 %23, i32 0, %union.ib_gid* %5)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %150

27:                                               ; preds = %1
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @netif_addr_lock_bh(%struct.TYPE_8__* %30)
  %32 = bitcast %union.ib_gid* %5 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 8
  %39 = bitcast %union.ib_gid* %5 to %struct.TYPE_6__*
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %43 = bitcast %union.ib_gid* %42 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 8
  %45 = bitcast %union.ib_gid* %5 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = bitcast %union.ib_gid* %4 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = bitcast %union.ib_gid* %4 to %struct.TYPE_6__*
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %58 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %57, i32 0, i32 1
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = call i32 @netif_addr_unlock_bh(%struct.TYPE_8__* %59)
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %62 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ib_find_gid(i32 %63, %union.ib_gid* %4, i64* %9, i64* %8)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = call i32 @netif_addr_lock_bh(%struct.TYPE_8__* %67)
  %69 = bitcast %union.ib_gid* %4 to %struct.TYPE_6__*
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %71, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %27
  br label %144

79:                                               ; preds = %27
  %80 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_SET, align 4
  %81 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %82 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %81, i32 0, i32 3
  %83 = call i32 @test_bit(i32 %80, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %112, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %91 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %89, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_SET, align 4
  %96 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %97 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %96, i32 0, i32 3
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load i64, i64* %8, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_CTRL, align 4
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %104 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %103, i32 0, i32 3
  %105 = call i32 @clear_bit(i32 %102, i32* %104)
  br label %111

106:                                              ; preds = %94
  %107 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_CTRL, align 4
  %108 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %109 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %108, i32 0, i32 3
  %110 = call i32 @set_bit(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  store i32 1, i32* %10, align 4
  br label %113

112:                                              ; preds = %88, %85
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %111
  br label %143

114:                                              ; preds = %79
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %9, align 8
  %119 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %120 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %10, align 4
  br label %142

124:                                              ; preds = %117, %114
  %125 = load i32, i32* @IPOIB_FLAG_DEV_ADDR_CTRL, align 4
  %126 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %127 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %126, i32 0, i32 3
  %128 = call i32 @test_bit(i32 %125, i32* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %124
  %131 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %132 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %131, i32 0, i32 2
  %133 = call i32 @memcpy(%struct.TYPE_9__* %132, %union.ib_gid* %5, i32 16)
  %134 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %135 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %134, i32 0, i32 1
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i64 4
  %140 = call i32 @memcpy(%struct.TYPE_9__* %139, %union.ib_gid* %5, i32 16)
  store i32 1, i32* %10, align 4
  br label %141

141:                                              ; preds = %130, %124
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %113
  br label %144

144:                                              ; preds = %143, %78
  %145 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %146 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  %148 = call i32 @netif_addr_unlock_bh(%struct.TYPE_8__* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %144, %26
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i64 @rdma_query_gid(i32, i64, i32, %union.ib_gid*) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.TYPE_8__*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.TYPE_8__*) #1

declare dso_local i32 @ib_find_gid(i32, %union.ib_gid*, i64*, i64*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %union.ib_gid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
