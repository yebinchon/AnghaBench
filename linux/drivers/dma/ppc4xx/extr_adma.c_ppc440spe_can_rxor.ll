; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_can_rxor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_can_rxor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@ppc440spe_rxor_srcs = common dso_local global %struct.page** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32, i64)* @ppc440spe_can_rxor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc440spe_can_rxor(%struct.page** %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.page** %0, %struct.page*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 1
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.page**, %struct.page*** @ppc440spe_rxor_srcs, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.page** %23)
  %25 = icmp sgt i32 %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %51, %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load %struct.page**, %struct.page*** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.page*, %struct.page** %33, i64 %35
  %37 = load %struct.page*, %struct.page** %36, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %51

40:                                               ; preds = %32
  %41 = load %struct.page**, %struct.page*** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.page*, %struct.page** %41, i64 %43
  %45 = load %struct.page*, %struct.page** %44, align 8
  %46 = load %struct.page**, %struct.page*** @ppc440spe_rxor_srcs, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %49
  store %struct.page* %45, %struct.page** %50, align 8
  br label %51

51:                                               ; preds = %40, %39
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %137, %54
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %140

60:                                               ; preds = %56
  %61 = load %struct.page**, %struct.page*** @ppc440spe_rxor_srcs, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.page*, %struct.page** %61, i64 %63
  %65 = load %struct.page*, %struct.page** %64, align 8
  %66 = call i8* @page_address(%struct.page* %65)
  store i8* %66, i8** %12, align 8
  %67 = load %struct.page**, %struct.page*** @ppc440spe_rxor_srcs, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %67, i64 %70
  %72 = load %struct.page*, %struct.page** %71, align 8
  %73 = call i8* @page_address(%struct.page* %72)
  store i8* %73, i8** %13, align 8
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %136 [
    i32 0, label %75
    i32 1, label %92
    i32 2, label %135
  ]

75:                                               ; preds = %60
  %76 = load i8*, i8** %12, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = icmp eq i8* %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %91

82:                                               ; preds = %75
  %83 = load i8*, i8** %13, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  %87 = icmp eq i8* %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %90

89:                                               ; preds = %82
  br label %141

90:                                               ; preds = %88
  br label %91

91:                                               ; preds = %90, %81
  br label %136

92:                                               ; preds = %60
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %94, 2
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %107, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load i8*, i8** %12, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = load i64, i64* %7, align 8
  %104 = sub i64 0, %103
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = icmp ne i8* %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %92
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %134

108:                                              ; preds = %100, %97
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = mul i64 %111, %113
  %115 = getelementptr inbounds i8, i8* %110, i64 %114
  %116 = icmp eq i8* %109, %115
  br i1 %116, label %131, label %117

117:                                              ; preds = %108
  %118 = load i8*, i8** %12, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i64, i64* %7, align 8
  %121 = mul i64 2, %120
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = icmp eq i8* %118, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %117
  %125 = load i8*, i8** %12, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i64, i64* %7, align 8
  %128 = mul i64 3, %127
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = icmp eq i8* %125, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %124, %117, %108
  store i32 2, i32* %10, align 4
  br label %133

132:                                              ; preds = %124
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %132, %131
  br label %134

134:                                              ; preds = %133, %107
  br label %136

135:                                              ; preds = %60
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %60, %135, %134, %91
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %56

140:                                              ; preds = %56
  br label %141

141:                                              ; preds = %140, %89
  %142 = load i32, i32* %10, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %147, label %148

147:                                              ; preds = %144, %141
  store i32 1, i32* %4, align 4
  br label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %149

149:                                              ; preds = %148, %147, %20
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #1

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
