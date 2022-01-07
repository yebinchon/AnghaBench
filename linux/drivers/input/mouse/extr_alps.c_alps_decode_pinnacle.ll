; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_pinnacle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_pinnacle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_fields = type { i32, i32, i8, i8, i8, i8, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8 }
%struct.psmouse = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_fields*, i8*, %struct.psmouse*)* @alps_decode_pinnacle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_decode_pinnacle(%struct.alps_fields* %0, i8* %1, %struct.psmouse* %2) #0 {
  %4 = alloca %struct.alps_fields*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.psmouse*, align 8
  store %struct.alps_fields* %0, %struct.alps_fields** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.psmouse* %2, %struct.psmouse** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 4
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 64
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %17 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 64
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %28 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %30 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %88

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 3
  %39 = add nsw i32 %38, 1
  %40 = trunc i32 %39 to i8
  %41 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %42 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %41, i32 0, i32 2
  store i8 %40, i8* %42, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 4
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 126
  %48 = shl i32 %47, 8
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 127
  %54 = shl i32 %53, 2
  %55 = or i32 %48, %54
  %56 = load i8*, i8** %5, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = and i32 %59, 48
  %61 = ashr i32 %60, 4
  %62 = or i32 %55, %61
  %63 = trunc i32 %62 to i8
  %64 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %65 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %64, i32 0, i32 3
  store i8 %63, i8* %65, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 112
  %71 = shl i32 %70, 4
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 127
  %77 = shl i32 %76, 1
  %78 = or i32 %71, %77
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 4
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = or i32 %78, %83
  %85 = trunc i32 %84 to i8
  %86 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %87 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %86, i32 0, i32 4
  store i8 %85, i8* %87, align 2
  br label %140

88:                                               ; preds = %3
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %92, 127
  %94 = shl i32 %93, 4
  %95 = load i8*, i8** %5, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 48
  %100 = ashr i32 %99, 2
  %101 = or i32 %94, %100
  %102 = load i8*, i8** %5, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = and i32 %105, 48
  %107 = ashr i32 %106, 4
  %108 = or i32 %101, %107
  %109 = trunc i32 %108 to i8
  %110 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %111 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  store i8 %109, i8* %112, align 4
  %113 = load i8*, i8** %5, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 127
  %118 = shl i32 %117, 4
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 15
  %124 = or i32 %118, %123
  %125 = trunc i32 %124 to i8
  %126 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %127 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i8 %125, i8* %128, align 1
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 5
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = and i32 %132, 127
  %134 = trunc i32 %133 to i8
  %135 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %136 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %135, i32 0, i32 5
  store i8 %134, i8* %136, align 1
  %137 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @alps_decode_buttons_v3(%struct.alps_fields* %137, i8* %138)
  br label %140

140:                                              ; preds = %88, %33
  ret i32 0
}

declare dso_local i32 @alps_decode_buttons_v3(%struct.alps_fields*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
