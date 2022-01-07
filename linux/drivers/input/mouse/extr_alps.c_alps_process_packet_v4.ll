; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_v4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_process_packet_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psmouse = type { i8*, %struct.alps_data* }
%struct.alps_data = type { i32, i8*, %struct.alps_fields }
%struct.alps_fields = type { i32, i32, i8, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psmouse*)* @alps_process_packet_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_process_packet_v4(%struct.psmouse* %0) #0 {
  %2 = alloca %struct.psmouse*, align 8
  %3 = alloca %struct.alps_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.alps_fields*, align 8
  %6 = alloca i32, align 4
  store %struct.psmouse* %0, %struct.psmouse** %2, align 8
  %7 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %8 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %7, i32 0, i32 1
  %9 = load %struct.alps_data*, %struct.alps_data** %8, align 8
  store %struct.alps_data* %9, %struct.alps_data** %3, align 8
  %10 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %11 = getelementptr inbounds %struct.psmouse, %struct.psmouse* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  %13 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %14 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %13, i32 0, i32 2
  store %struct.alps_fields* %14, %struct.alps_fields** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 6
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 64
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %23 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %26 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %27, 2
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %210

33:                                               ; preds = %24
  %34 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %35 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 2, %36
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 6
  %40 = load i8, i8* %39, align 1
  %41 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %42 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %40, i8* %46, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 7
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %51 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  store i8 %49, i8* %56, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %67 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 4
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 2
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %78 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 127
  %84 = shl i32 %83, 4
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = and i32 %88, 48
  %90 = ashr i32 %89, 2
  %91 = or i32 %84, %90
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = and i32 %95, 48
  %97 = ashr i32 %96, 4
  %98 = or i32 %91, %97
  %99 = trunc i32 %98 to i8
  %100 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %101 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i8 %99, i8* %102, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = and i32 %106, 127
  %108 = shl i32 %107, 4
  %109 = load i8*, i8** %4, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 3
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = and i32 %112, 15
  %114 = or i32 %108, %113
  %115 = trunc i32 %114 to i8
  %116 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %117 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  store i8 %115, i8* %118, align 1
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 127
  %124 = trunc i32 %123 to i8
  %125 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %126 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %125, i32 0, i32 2
  store i8 %124, i8* %126, align 4
  %127 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %128 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = icmp sgt i32 %130, 2
  br i1 %131, label %132, label %204

132:                                              ; preds = %33
  %133 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %134 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %133, i32 0, i32 0
  store i32 0, i32* %134, align 8
  %135 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %136 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = and i32 %140, 31
  %142 = shl i32 %141, 10
  %143 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %144 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 3
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, 96
  %150 = shl i32 %149, 3
  %151 = or i32 %142, %150
  %152 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %153 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %152, i32 0, i32 1
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = and i32 %157, 63
  %159 = shl i32 %158, 2
  %160 = or i32 %151, %159
  %161 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %162 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 96
  %168 = ashr i32 %167, 5
  %169 = or i32 %160, %168
  %170 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %171 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %170, i32 0, i32 3
  store i32 %169, i32* %171, align 4
  %172 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %173 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %172, i32 0, i32 1
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 5
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = and i32 %177, 1
  %179 = shl i32 %178, 10
  %180 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %181 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 3
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 31
  %187 = shl i32 %186, 5
  %188 = or i32 %179, %187
  %189 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %190 = getelementptr inbounds %struct.alps_data, %struct.alps_data* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 1
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = and i32 %194, 31
  %196 = or i32 %188, %195
  %197 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %198 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.alps_data*, %struct.alps_data** %3, align 8
  %200 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %201 = call i32 @alps_process_bitmap(%struct.alps_data* %199, %struct.alps_fields* %200)
  %202 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %203 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %202, i32 0, i32 5
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %132, %33
  %205 = load %struct.psmouse*, %struct.psmouse** %2, align 8
  %206 = load %struct.alps_fields*, %struct.alps_fields** %5, align 8
  %207 = getelementptr inbounds %struct.alps_fields, %struct.alps_fields* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @alps_report_semi_mt_data(%struct.psmouse* %205, i32 %208)
  br label %210

210:                                              ; preds = %204, %32
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @alps_process_bitmap(%struct.alps_data*, %struct.alps_fields*) #1

declare dso_local i32 @alps_report_semi_mt_data(%struct.psmouse*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
