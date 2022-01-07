; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_rushmore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_rushmore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_fields = type { i32, i32, i8, i8, i8, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i8, i8 }
%struct.psmouse = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_fields*, i8*, %struct.psmouse*)* @alps_decode_rushmore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_decode_rushmore(%struct.alps_fields* %0, i8* %1, %struct.psmouse* %2) #0 {
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
  store i32 %15, i32* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 5
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
  br i1 %32, label %33, label %110

33:                                               ; preds = %3
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 5
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, 3
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = ashr i32 %43, 2
  %45 = and i32 %44, 3
  %46 = trunc i32 %45 to i8
  %47 = call i64 @max(i8 zeroext %39, i8 zeroext %46)
  %48 = add nsw i64 %47, 1
  %49 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %50 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 5
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 16
  %56 = shl i32 %55, 11
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 126
  %62 = shl i32 %61, 8
  %63 = or i32 %56, %62
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 127
  %69 = shl i32 %68, 2
  %70 = or i32 %63, %69
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 48
  %76 = ashr i32 %75, 4
  %77 = or i32 %70, %76
  %78 = trunc i32 %77 to i8
  %79 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %80 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %79, i32 0, i32 2
  store i8 %78, i8* %80, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 32
  %86 = shl i32 %85, 6
  %87 = load i8*, i8** %5, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = and i32 %90, 112
  %92 = shl i32 %91, 4
  %93 = or i32 %86, %92
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = and i32 %97, 127
  %99 = shl i32 %98, 1
  %100 = or i32 %93, %99
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = and i32 %104, 1
  %106 = or i32 %100, %105
  %107 = trunc i32 %106 to i8
  %108 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %109 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %108, i32 0, i32 3
  store i8 %107, i8* %109, align 1
  br label %162

110:                                              ; preds = %3
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 127
  %116 = shl i32 %115, 4
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = and i32 %120, 48
  %122 = ashr i32 %121, 2
  %123 = or i32 %116, %122
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, 48
  %129 = ashr i32 %128, 4
  %130 = or i32 %123, %129
  %131 = trunc i32 %130 to i8
  %132 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %133 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  store i8 %131, i8* %134, align 1
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 2
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 127
  %140 = shl i32 %139, 4
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 15
  %146 = or i32 %140, %145
  %147 = trunc i32 %146 to i8
  %148 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %149 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i8 %147, i8* %150, align 1
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 5
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 127
  %156 = trunc i32 %155 to i8
  %157 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %158 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %157, i32 0, i32 4
  store i8 %156, i8* %158, align 2
  %159 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @alps_decode_buttons_v3(%struct.alps_fields* %159, i8* %160)
  br label %162

162:                                              ; preds = %110, %33
  ret i32 0
}

declare dso_local i64 @max(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @alps_decode_buttons_v3(%struct.alps_fields*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
