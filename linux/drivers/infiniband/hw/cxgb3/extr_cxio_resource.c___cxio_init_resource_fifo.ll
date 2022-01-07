; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c___cxio_init_resource_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_cxio_resource.c___cxio_init_resource_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfifo = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RANDOM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kfifo*, i32*, i32, i32, i32, i32)* @__cxio_init_resource_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cxio_init_resource_fifo(%struct.kfifo* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.kfifo*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [16 x i32], align 16
  store %struct.kfifo* %0, %struct.kfifo** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i64 @kfifo_alloc(%struct.kfifo* %22, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %6
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %155

33:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %44, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %42 = bitcast i32* %16 to i8*
  %43 = call i32 @kfifo_in(%struct.kfifo* %41, i8* %42, i32 4)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %34

47:                                               ; preds = %34
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %119

50:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  %51 = call i32 (...) @prandom_u32()
  store i32 %51, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %63, %50
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @RANDOM_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @RANDOM_SIZE, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %100, %66
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %72, %73
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %103

76:                                               ; preds = %70
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @RANDOM_SIZE, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  store i32 0, i32* %15, align 4
  %81 = call i32 (...) @prandom_u32()
  store i32 %81, i32* %18, align 4
  br label %82

82:                                               ; preds = %80, %76
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %15, align 4
  %85 = mul nsw i32 %84, 2
  %86 = ashr i32 %83, %85
  %87 = and i32 %86, 15
  store i32 %87, i32* %17, align 4
  %88 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %90
  %92 = bitcast i32* %91 to i8*
  %93 = call i32 @kfifo_in(%struct.kfifo* %88, i8* %92, i32 4)
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %82
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %70

103:                                              ; preds = %70
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %115, %103
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @RANDOM_SIZE, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 %111
  %113 = bitcast i32* %112 to i8*
  %114 = call i32 @kfifo_in(%struct.kfifo* %109, i8* %113, i32 4)
  br label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %104

118:                                              ; preds = %104
  br label %135

119:                                              ; preds = %47
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %14, align 4
  br label %121

121:                                              ; preds = %131, %119
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %12, align 4
  %125 = sub nsw i32 %123, %124
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %129 = bitcast i32* %14 to i8*
  %130 = call i32 @kfifo_in(%struct.kfifo* %128, i8* %129, i32 4)
  br label %131

131:                                              ; preds = %127
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %14, align 4
  br label %121

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134, %118
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %151, %135
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.kfifo*, %struct.kfifo** %8, align 8
  %144 = bitcast i32* %16 to i8*
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @kfifo_out_locked(%struct.kfifo* %143, i8* %144, i32 4, i32* %145)
  %147 = sext i32 %146 to i64
  %148 = icmp ne i64 %147, 4
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %154

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %14, align 4
  br label %136

154:                                              ; preds = %149, %136
  store i32 0, i32* %7, align 4
  br label %155

155:                                              ; preds = %154, %30
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @kfifo_alloc(%struct.kfifo*, i32, i32) #1

declare dso_local i32 @kfifo_in(%struct.kfifo*, i8*, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @kfifo_out_locked(%struct.kfifo*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
