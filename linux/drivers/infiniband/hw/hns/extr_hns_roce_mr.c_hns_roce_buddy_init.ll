; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_hns_roce_buddy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_buddy = type { i32, i32*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_buddy*, i32)* @hns_roce_buddy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_buddy_init(%struct.hns_roce_buddy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_roce_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_roce_buddy* %0, %struct.hns_roce_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %10 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %12 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %15 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kcalloc(i32 %17, i32 4, i32 %18)
  %20 = bitcast i8* %19 to i32*
  %21 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %22 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %21, i32 0, i32 1
  store i32* %20, i32** %22, align 8
  %23 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %24 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kcalloc(i32 %26, i32 4, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %31 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %33 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %38 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %2
  br label %140

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %98, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %46 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sle i32 %44, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %43
  %50 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %51 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = shl i32 1, %54
  %56 = call i32 @BITS_TO_LONGS(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @GFP_KERNEL, align 4
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @kcalloc(i32 %57, i32 8, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %64 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %70 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %97, label %77

77:                                               ; preds = %49
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @array_size(i32 %78, i32 8)
  %80 = call i32 @vzalloc(i32 %79)
  %81 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %82 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  %87 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %88 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %77
  br label %120

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %96, %49
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %43

101:                                              ; preds = %43
  %102 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %103 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %106 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @set_bit(i32 0, i32 %110)
  %112 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %113 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %116 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  store i32 1, i32* %119, align 4
  store i32 0, i32* %3, align 4
  br label %151

120:                                              ; preds = %95
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %136, %120
  %122 = load i32, i32* %6, align 4
  %123 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %124 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sle i32 %122, %125
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %129 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @kvfree(i32 %134)
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %121

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %41
  %141 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %142 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load %struct.hns_roce_buddy*, %struct.hns_roce_buddy** %4, align 8
  %146 = getelementptr inbounds %struct.hns_roce_buddy, %struct.hns_roce_buddy* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @kfree(i32* %147)
  %149 = load i32, i32* @ENOMEM, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %140, %101
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
