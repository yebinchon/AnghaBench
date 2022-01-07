; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf_12.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_set_addrf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32 }
%struct.nvm_geo = type { i32, i32, i32 }
%struct.nvm_addrf_12 = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [44 x i8] c"supports only power-of-two channel config.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"supports only power-of-two LUN config.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.nvm_geo*, %struct.nvm_addrf_12*)* @pblk_set_addrf_12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_set_addrf_12(%struct.pblk* %0, %struct.nvm_geo* %1, %struct.nvm_addrf_12* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca %struct.nvm_addrf_12*, align 8
  %8 = alloca %struct.nvm_addrf_12*, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.nvm_geo* %1, %struct.nvm_geo** %6, align 8
  store %struct.nvm_addrf_12* %2, %struct.nvm_addrf_12** %7, align 8
  %10 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %11 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.nvm_addrf_12*
  store %struct.nvm_addrf_12* %12, %struct.nvm_addrf_12** %8, align 8
  %13 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %14 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_count_order(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = shl i32 1, %17
  %19 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %20 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.pblk*, %struct.pblk** %5, align 8
  %25 = call i32 @pblk_err(%struct.pblk* %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %195

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %31 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %33 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @get_count_order(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %39 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %28
  %43 = load %struct.pblk*, %struct.pblk** %5, align 8
  %44 = call i32 @pblk_err(%struct.pblk* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %195

47:                                               ; preds = %28
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %50 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %52 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %55 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %57 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %60 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %62 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %65 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  %66 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %67 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %70 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  %71 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %72 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %71, i32 0, i32 6
  store i64 0, i64* %72, align 8
  %73 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %74 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %77 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %76, i32 0, i32 7
  store i64 %75, i64* %77, align 8
  %78 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %79 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %78, i32 0, i32 7
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %82 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = trunc i64 %84 to i32
  %86 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %87 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %86, i32 0, i32 8
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %89 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %92 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %90, %93
  %95 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %96 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %98 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %101 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  %104 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %105 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %104, i32 0, i32 10
  store i32 %103, i32* %105, align 8
  %106 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %107 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %106, i32 0, i32 10
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %111 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %109, %112
  %114 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %115 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %114, i32 0, i32 11
  store i64 %113, i64* %115, align 8
  %116 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %117 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %116, i32 0, i32 5
  %118 = load i64, i64* %117, align 8
  %119 = shl i64 1, %118
  %120 = sub i64 %119, 1
  %121 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %122 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 %120, %123
  %125 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %126 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %125, i32 0, i32 12
  store i64 %124, i64* %126, align 8
  %127 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %128 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = shl i64 1, %129
  %131 = sub i64 %130, 1
  %132 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %133 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = shl i64 %131, %134
  %136 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %137 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %136, i32 0, i32 13
  store i64 %135, i64* %137, align 8
  %138 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %139 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = zext i32 %140 to i64
  %142 = shl i64 1, %141
  %143 = sub i64 %142, 1
  %144 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %145 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = zext i32 %146 to i64
  %148 = shl i64 %143, %147
  %149 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %150 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %149, i32 0, i32 14
  store i64 %148, i64* %150, align 8
  %151 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %152 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = zext i32 %153 to i64
  %155 = shl i64 1, %154
  %156 = sub i64 %155, 1
  %157 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %158 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  %161 = shl i64 %156, %160
  %162 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %163 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %162, i32 0, i32 15
  store i64 %161, i64* %163, align 8
  %164 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %165 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = shl i64 1, %166
  %168 = sub i64 %167, 1
  %169 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %170 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %169, i32 0, i32 10
  %171 = load i32, i32* %170, align 8
  %172 = zext i32 %171 to i64
  %173 = shl i64 %168, %172
  %174 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %175 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %174, i32 0, i32 16
  store i64 %173, i64* %175, align 8
  %176 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %177 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = shl i64 1, %178
  %180 = sub i64 %179, 1
  %181 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %182 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %181, i32 0, i32 11
  %183 = load i64, i64* %182, align 8
  %184 = shl i64 %180, %183
  %185 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %186 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %185, i32 0, i32 17
  store i64 %184, i64* %186, align 8
  %187 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %7, align 8
  %188 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %187, i32 0, i32 11
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %191 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = add i64 %189, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %4, align 4
  br label %195

195:                                              ; preds = %47, %42, %23
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @get_count_order(i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
