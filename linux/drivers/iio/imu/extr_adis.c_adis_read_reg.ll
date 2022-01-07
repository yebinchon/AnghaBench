; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_adis.c_adis_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adis = type { i32*, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@ADIS_PAGE_SIZE = common dso_local global i32 0, align 4
@SPI_DELAY_UNIT_USECS = common dso_local global i32 0, align 4
@ADIS_REG_PAGE_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to read register 0x%02X: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adis_read_reg(%struct.adis* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.adis*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x %struct.spi_transfer], align 16
  store %struct.adis* %0, %struct.adis** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @ADIS_PAGE_SIZE, align 4
  %15 = udiv i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %12, i64 0, i64 0
  %17 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 0
  %18 = load %struct.adis*, %struct.adis** %5, align 8
  %19 = getelementptr inbounds %struct.adis, %struct.adis* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %17, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 1
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 2
  store i32 2, i32* %22, align 4
  %23 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 3
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 4
  %25 = load %struct.adis*, %struct.adis** %5, align 8
  %26 = getelementptr inbounds %struct.adis, %struct.adis* %25, i32 0, i32 5
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %24, align 4
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 5
  store i32 0, i32* %30, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 6
  %32 = load i32, i32* @SPI_DELAY_UNIT_USECS, align 4
  store i32 %32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i32 0, i32 7
  %34 = load %struct.adis*, %struct.adis** %5, align 8
  %35 = getelementptr inbounds %struct.adis, %struct.adis* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %33, align 8
  %39 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %16, i64 1
  %40 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 0
  %41 = load %struct.adis*, %struct.adis** %5, align 8
  %42 = getelementptr inbounds %struct.adis, %struct.adis* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32* %44, i32** %40, align 8
  %45 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 1
  store i32 8, i32* %45, align 8
  %46 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 2
  store i32 2, i32* %46, align 4
  %47 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 3
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 4
  %49 = load %struct.adis*, %struct.adis** %5, align 8
  %50 = getelementptr inbounds %struct.adis, %struct.adis* %49, i32 0, i32 5
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %48, align 4
  %54 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 5
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 6
  %56 = load i32, i32* @SPI_DELAY_UNIT_USECS, align 4
  store i32 %56, i32* %55, align 4
  %57 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i32 0, i32 7
  %58 = load %struct.adis*, %struct.adis** %5, align 8
  %59 = getelementptr inbounds %struct.adis, %struct.adis* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %57, align 8
  %63 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %39, i64 1
  %64 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 0
  %65 = load %struct.adis*, %struct.adis** %5, align 8
  %66 = getelementptr inbounds %struct.adis, %struct.adis* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %64, align 8
  %69 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 1
  store i32 8, i32* %69, align 8
  %70 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 2
  store i32 2, i32* %70, align 4
  %71 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 3
  store i32 1, i32* %71, align 8
  %72 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 4
  %73 = load %struct.adis*, %struct.adis** %5, align 8
  %74 = getelementptr inbounds %struct.adis, %struct.adis* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %72, align 4
  %78 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 5
  %79 = load %struct.adis*, %struct.adis** %5, align 8
  %80 = getelementptr inbounds %struct.adis, %struct.adis* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %78, align 8
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 6
  %83 = load i32, i32* @SPI_DELAY_UNIT_USECS, align 4
  store i32 %83, i32* %82, align 4
  %84 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i32 0, i32 7
  %85 = load %struct.adis*, %struct.adis** %5, align 8
  %86 = getelementptr inbounds %struct.adis, %struct.adis* %85, i32 0, i32 5
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %84, align 8
  %90 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %63, i64 1
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 0
  store i32* null, i32** %91, align 8
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 1
  store i32 8, i32* %92, align 8
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 2
  store i32 2, i32* %93, align 4
  %94 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 3
  store i32 0, i32* %94, align 8
  %95 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 4
  %96 = load %struct.adis*, %struct.adis** %5, align 8
  %97 = getelementptr inbounds %struct.adis, %struct.adis* %96, i32 0, i32 5
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %95, align 4
  %101 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 5
  %102 = load %struct.adis*, %struct.adis** %5, align 8
  %103 = getelementptr inbounds %struct.adis, %struct.adis* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %101, align 8
  %106 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 6
  store i32 0, i32* %106, align 4
  %107 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %90, i32 0, i32 7
  store i32 0, i32* %107, align 8
  %108 = load %struct.adis*, %struct.adis** %5, align 8
  %109 = getelementptr inbounds %struct.adis, %struct.adis* %108, i32 0, i32 2
  %110 = call i32 @mutex_lock(i32* %109)
  %111 = call i32 @spi_message_init(%struct.spi_message* %10)
  %112 = load %struct.adis*, %struct.adis** %5, align 8
  %113 = getelementptr inbounds %struct.adis, %struct.adis* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %4
  %118 = load i32, i32* @ADIS_REG_PAGE_ID, align 4
  %119 = call i32 @ADIS_WRITE_REG(i32 %118)
  %120 = load %struct.adis*, %struct.adis** %5, align 8
  %121 = getelementptr inbounds %struct.adis, %struct.adis* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.adis*, %struct.adis** %5, align 8
  %126 = getelementptr inbounds %struct.adis, %struct.adis* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %124, i32* %128, align 4
  %129 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %12, i64 0, i64 0
  %130 = call i32 @spi_message_add_tail(%struct.spi_transfer* %129, %struct.spi_message* %10)
  br label %131

131:                                              ; preds = %117, %4
  %132 = load i32, i32* %8, align 4
  switch i32 %132, label %164 [
    i32 4, label %133
    i32 2, label %148
  ]

133:                                              ; preds = %131
  %134 = load i32, i32* %6, align 4
  %135 = add i32 %134, 2
  %136 = call i8* @ADIS_READ_REG(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.adis*, %struct.adis** %5, align 8
  %139 = getelementptr inbounds %struct.adis, %struct.adis* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  store i32 %137, i32* %141, align 4
  %142 = load %struct.adis*, %struct.adis** %5, align 8
  %143 = getelementptr inbounds %struct.adis, %struct.adis* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 3
  store i32 0, i32* %145, align 4
  %146 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %12, i64 0, i64 1
  %147 = call i32 @spi_message_add_tail(%struct.spi_transfer* %146, %struct.spi_message* %10)
  br label %148

148:                                              ; preds = %131, %133
  %149 = load i32, i32* %6, align 4
  %150 = call i8* @ADIS_READ_REG(i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.adis*, %struct.adis** %5, align 8
  %153 = getelementptr inbounds %struct.adis, %struct.adis* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 4
  store i32 %151, i32* %155, align 4
  %156 = load %struct.adis*, %struct.adis** %5, align 8
  %157 = getelementptr inbounds %struct.adis, %struct.adis* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 5
  store i32 0, i32* %159, align 4
  %160 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %12, i64 0, i64 2
  %161 = call i32 @spi_message_add_tail(%struct.spi_transfer* %160, %struct.spi_message* %10)
  %162 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %12, i64 0, i64 3
  %163 = call i32 @spi_message_add_tail(%struct.spi_transfer* %162, %struct.spi_message* %10)
  br label %167

164:                                              ; preds = %131
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %11, align 4
  br label %202

167:                                              ; preds = %148
  %168 = load %struct.adis*, %struct.adis** %5, align 8
  %169 = getelementptr inbounds %struct.adis, %struct.adis* %168, i32 0, i32 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = call i32 @spi_sync(%struct.TYPE_4__* %170, %struct.spi_message* %10)
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %167
  %175 = load %struct.adis*, %struct.adis** %5, align 8
  %176 = getelementptr inbounds %struct.adis, %struct.adis* %175, i32 0, i32 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180)
  br label %202

182:                                              ; preds = %167
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.adis*, %struct.adis** %5, align 8
  %185 = getelementptr inbounds %struct.adis, %struct.adis* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %8, align 4
  switch i32 %187, label %201 [
    i32 4, label %188
    i32 2, label %194
  ]

188:                                              ; preds = %186
  %189 = load %struct.adis*, %struct.adis** %5, align 8
  %190 = getelementptr inbounds %struct.adis, %struct.adis* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @get_unaligned_be32(i32 %191)
  %193 = load i32*, i32** %7, align 8
  store i32 %192, i32* %193, align 4
  br label %201

194:                                              ; preds = %186
  %195 = load %struct.adis*, %struct.adis** %5, align 8
  %196 = getelementptr inbounds %struct.adis, %struct.adis* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 2
  %199 = call i32 @get_unaligned_be16(i32 %198)
  %200 = load i32*, i32** %7, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %186, %194, %188
  br label %202

202:                                              ; preds = %201, %174, %164
  %203 = load %struct.adis*, %struct.adis** %5, align 8
  %204 = getelementptr inbounds %struct.adis, %struct.adis* %203, i32 0, i32 2
  %205 = call i32 @mutex_unlock(i32* %204)
  %206 = load i32, i32* %11, align 4
  ret i32 %206
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @ADIS_WRITE_REG(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i8* @ADIS_READ_REG(i32) #1

declare dso_local i32 @spi_sync(%struct.TYPE_4__*, %struct.spi_message*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32) #1

declare dso_local i32 @get_unaligned_be16(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
