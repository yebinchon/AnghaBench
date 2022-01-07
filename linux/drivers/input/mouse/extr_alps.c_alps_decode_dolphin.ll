; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_dolphin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_decode_dolphin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alps_fields = type { i32, i32, i8, i8, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8 }
%struct.psmouse = type { %struct.alps_data* }
%struct.alps_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alps_fields*, i8*, %struct.psmouse*)* @alps_decode_dolphin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alps_decode_dolphin(%struct.alps_fields* %0, i8* %1, %struct.psmouse* %2) #0 {
  %4 = alloca %struct.alps_fields*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.psmouse*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.alps_data*, align 8
  store %struct.alps_fields* %0, %struct.alps_fields** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.psmouse* %2, %struct.psmouse** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.psmouse*, %struct.psmouse** %6, align 8
  %10 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %9, i32 0, i32 0
  %11 = load %struct.alps_data*, %struct.alps_data** %10, align 8
  store %struct.alps_data* %11, %struct.alps_data** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, 2
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %22 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %33 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %35 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %92, label %38

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 127
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 15
  %49 = shl i32 %48, 7
  %50 = or i32 %43, %49
  %51 = trunc i32 %50 to i8
  %52 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %53 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8 %51, i8* %54, align 4
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 2
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %58, 127
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %63, 240
  %65 = shl i32 %64, 3
  %66 = or i32 %59, %65
  %67 = trunc i32 %66 to i8
  %68 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %69 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8 %67, i8* %70, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %38
  br label %84

78:                                               ; preds = %38
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 127
  br label %84

84:                                               ; preds = %78, %77
  %85 = phi i32 [ 0, %77 ], [ %83, %78 ]
  %86 = trunc i32 %85 to i8
  %87 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %88 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %87, i32 0, i32 2
  store i8 %86, i8* %88, align 4
  %89 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @alps_decode_buttons_v3(%struct.alps_fields* %89, i8* %90)
  br label %178

92:                                               ; preds = %3
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 6
  %98 = ashr i32 %97, 1
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = and i32 %102, 16
  %104 = ashr i32 %103, 2
  %105 = or i32 %98, %104
  %106 = trunc i32 %105 to i8
  %107 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %108 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %107, i32 0, i32 3
  store i8 %106, i8* %108, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 127
  %114 = load i8*, i8** %5, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 127
  %119 = shl i32 %118, 7
  %120 = or i32 %113, %119
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, 127
  %126 = shl i32 %125, 14
  %127 = or i32 %120, %126
  %128 = load i8*, i8** %5, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 5
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = and i32 %131, 127
  %133 = shl i32 %132, 21
  %134 = or i32 %127, %133
  %135 = load i8*, i8** %5, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 3
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 7
  %140 = shl i32 %139, 28
  %141 = or i32 %134, %140
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 3
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, 112
  %147 = shl i32 %146, 27
  %148 = or i32 %141, %147
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 %152, 1
  %154 = shl i32 %153, 34
  %155 = or i32 %148, %154
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  %158 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BIT(i32 %159)
  %161 = sub nsw i32 %160, 1
  %162 = and i32 %156, %161
  %163 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %164 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  %167 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = ashr i32 %165, %168
  %170 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  %171 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @BIT(i32 %172)
  %174 = sub nsw i32 %173, 1
  %175 = and i32 %169, %174
  %176 = load %struct.alps_fields*, %struct.alps_fields** %4, align 8
  %177 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %92, %84
  ret i32 0
}

declare dso_local i32 @alps_decode_buttons_v3(%struct.alps_fields*, i8*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
