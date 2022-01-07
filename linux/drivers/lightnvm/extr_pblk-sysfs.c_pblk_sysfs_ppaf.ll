; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_ppaf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_ppaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.nvm_addrf, %struct.nvm_tgt_dev* }
%struct.nvm_addrf = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i64, %struct.nvm_addrf }
%struct.nvm_addrf_12 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NVM_OCSSD_SPEC_12 = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"g:(b:%d)blk:%d/%d,pg:%d/%d,lun:%d/%d,ch:%d/%d,pl:%d/%d,sec:%d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"d:blk:%d/%d,pg:%d/%d,lun:%d/%d,ch:%d/%d,pl:%d/%d,sec:%d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"pblk:(s:%d)ch:%d/%d,lun:%d/%d,chk:%d/%d/sec:%d/%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"device:ch:%d/%d,lun:%d/%d,chk:%d/%d,sec:%d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, i8*)* @pblk_sysfs_ppaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_sysfs_ppaf(%struct.pblk* %0, i8* %1) #0 {
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nvm_tgt_dev*, align 8
  %6 = alloca %struct.nvm_geo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nvm_addrf_12*, align 8
  %9 = alloca %struct.nvm_addrf_12*, align 8
  %10 = alloca %struct.nvm_addrf*, align 8
  %11 = alloca %struct.nvm_addrf*, align 8
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.pblk*, %struct.pblk** %3, align 8
  %13 = getelementptr inbounds %struct.pblk, %struct.pblk* %12, i32 0, i32 2
  %14 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %13, align 8
  store %struct.nvm_tgt_dev* %14, %struct.nvm_tgt_dev** %5, align 8
  %15 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %15, i32 0, i32 0
  store %struct.nvm_geo* %16, %struct.nvm_geo** %6, align 8
  store i64 0, i64* %7, align 8
  %17 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %18 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NVM_OCSSD_SPEC_12, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %116

22:                                               ; preds = %2
  %23 = load %struct.pblk*, %struct.pblk** %3, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 1
  %25 = bitcast %struct.nvm_addrf* %24 to %struct.nvm_addrf_12*
  store %struct.nvm_addrf_12* %25, %struct.nvm_addrf_12** %8, align 8
  %26 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %27 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %26, i32 0, i32 1
  %28 = bitcast %struct.nvm_addrf* %27 to %struct.nvm_addrf_12*
  store %struct.nvm_addrf_12* %28, %struct.nvm_addrf_12** %9, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* @PAGE_SIZE, align 8
  %31 = load %struct.pblk*, %struct.pblk** %3, align 8
  %32 = getelementptr inbounds %struct.pblk, %struct.pblk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %35 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %38 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %41 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %44 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %47 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %50 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %53 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %56 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %59 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %62 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %65 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %8, align 8
  %68 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i64 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %69)
  store i64 %70, i64* %7, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i64, i64* @PAGE_SIZE, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %78 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %81 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %84 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %87 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %90 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %93 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %96 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %99 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %102 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %101, i32 0, i32 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %105 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %108 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %107, i32 0, i32 10
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.nvm_addrf_12*, %struct.nvm_addrf_12** %9, align 8
  %111 = getelementptr inbounds %struct.nvm_addrf_12, %struct.nvm_addrf_12* %110, i32 0, i32 11
  %112 = load i32, i32* %111, align 4
  %113 = call i64 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %73, i64 %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = load i64, i64* %7, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %7, align 8
  br label %184

116:                                              ; preds = %2
  %117 = load %struct.pblk*, %struct.pblk** %3, align 8
  %118 = getelementptr inbounds %struct.pblk, %struct.pblk* %117, i32 0, i32 1
  store %struct.nvm_addrf* %118, %struct.nvm_addrf** %10, align 8
  %119 = load %struct.nvm_geo*, %struct.nvm_geo** %6, align 8
  %120 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %119, i32 0, i32 1
  store %struct.nvm_addrf* %120, %struct.nvm_addrf** %11, align 8
  %121 = load i8*, i8** %4, align 8
  %122 = load i64, i64* @PAGE_SIZE, align 8
  %123 = load %struct.pblk*, %struct.pblk** %3, align 8
  %124 = getelementptr inbounds %struct.pblk, %struct.pblk* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %127 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %130 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %133 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %136 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %139 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %142 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %145 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.nvm_addrf*, %struct.nvm_addrf** %10, align 8
  %148 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = call i64 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %121, i64 %122, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %128, i32 %131, i32 %134, i32 %137, i32 %140, i32 %143, i32 %146, i32 %149)
  store i64 %150, i64* %7, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds i8, i8* %151, i64 %152
  %154 = load i64, i64* @PAGE_SIZE, align 8
  %155 = load i64, i64* %7, align 8
  %156 = sub nsw i64 %154, %155
  %157 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %158 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %161 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %164 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %167 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %170 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %173 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %176 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.nvm_addrf*, %struct.nvm_addrf** %11, align 8
  %179 = getelementptr inbounds %struct.nvm_addrf, %struct.nvm_addrf* %178, i32 0, i32 7
  %180 = load i32, i32* %179, align 4
  %181 = call i64 (i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) @snprintf(i8* %153, i64 %156, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %159, i32 %162, i32 %165, i32 %168, i32 %171, i32 %174, i32 %177, i32 %180)
  %182 = load i64, i64* %7, align 8
  %183 = add nsw i64 %182, %181
  store i64 %183, i64* %7, align 8
  br label %184

184:                                              ; preds = %116, %22
  %185 = load i64, i64* %7, align 8
  ret i64 %185
}

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
